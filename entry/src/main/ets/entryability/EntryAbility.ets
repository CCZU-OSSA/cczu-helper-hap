import { AbilityConstant, ConfigurationConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { AppStorageV2, display, window } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import { CacheSysShareData } from '../appStorageV2/CacheSysShareData';

const DOMAIN = 0x0000;

export default class EntryAbility extends UIAbility {
  private cacheSysShareData:CacheSysShareData = AppStorageV2.connect(CacheSysShareData,()=>new CacheSysShareData())!
  private windowObj?: window.Window
  private curBp: string = ''
  //...
  // 根据当前窗口尺寸更新断点
  private updateBreakpoint(windowWidth: number) :void{
    // 拿到当前窗口对象获取当前所在displayId
    let displayId = this.windowObj?.getWindowProperties().displayId
    try {
      // 将长度的单位由px换算为vp
      let windowWidthVp = windowWidth / display.getDisplayByIdSync(displayId).densityPixels
      let newBp: string = ''

      if (windowWidthVp < 840) {
        newBp = 'sm'
      } else {
        newBp = 'lg'
      }

      if (this.curBp !== newBp) {
        this.curBp = newBp
        // 使用状态变量记录当前断点值
        this.cacheSysShareData.currentBreakpoint=this.curBp
      }
    } catch(err) {
      console.log("getDisplayByIdSync failed err"+err.code)
    }
  }

  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    this.context.getApplicationContext().setColorMode(ConfigurationConstant.ColorMode.COLOR_MODE_NOT_SET);
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {

    //以下为沉浸式
    let windowClass: window.Window = windowStage.getMainWindowSync(); // 获取应用主窗口

    windowClass.setWindowLayoutFullScreen(true).then(() => {
      console.info('Succeeded in setting the window layout to full-screen mode.');
    }).catch((err: BusinessError) => {
      console.error('Failed to set the window layout to full-screen mode. Cause:' + JSON.stringify(err));
    });

    let type = window.AvoidAreaType.TYPE_NAVIGATION_INDICATOR; // 导航条避让
    let avoidArea = windowClass.getWindowAvoidArea(type);
    let bottomRectHeight = avoidArea.bottomRect.height; // 获取到导航条区域的高度
    this.cacheSysShareData.bottomRectHeight=bottomRectHeight;

    type = window.AvoidAreaType.TYPE_SYSTEM; // 状态栏避
    avoidArea = windowClass.getWindowAvoidArea(type);
    let topRectHeight = avoidArea.topRect.height; // 获取状态栏区域高度
    this.cacheSysShareData.topRectHeight=topRectHeight;

    windowClass.on('avoidAreaChange', (data) => {
      if (data.type === window.AvoidAreaType.TYPE_SYSTEM) {
        let topRectHeight = data.area.topRect.height;
        this.cacheSysShareData.topRectHeight=topRectHeight;
      } else if (data.type == window.AvoidAreaType.TYPE_NAVIGATION_INDICATOR) {
        let bottomRectHeight = data.area.bottomRect.height;
        this.cacheSysShareData.bottomRectHeight=bottomRectHeight;
      }
    });
    //以上为沉浸式

    //以下为一多开发检测设备
    windowStage.getMainWindow().then((windowObj) => {
      this.windowObj = windowObj
      // 获取应用启动时的窗口尺寸
      this.updateBreakpoint(windowObj.getWindowProperties().windowRect.width)
      // 注册回调函数，监听窗口尺寸变化
      windowObj.on('windowSizeChange', (windowSize)=>{
        this.updateBreakpoint(windowSize.width)
      })
    });
    //上为一多开发检测设备

    // Main window is created, set main page for this ability
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(DOMAIN, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err));
        return;
      }
      hilog.info(DOMAIN, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onBackground');
  }
}