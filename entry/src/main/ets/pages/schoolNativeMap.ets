import { MapComponent, mapCommon, map } from '@kit.MapKit';
import { AsyncCallback } from '@kit.BasicServicesKit';
import { CacheUIShareData } from '../appStorageV2/CacheShareData';
import { AppStorageV2 } from '@kit.ArkUI';

@Builder
export function schoolNativeMapBuilder()
{
  schoolNativeMap()
}

@Entry
@ComponentV2
struct schoolNativeMap{
  pageInfos: NavPathStack = new NavPathStack()
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!

  private mapController?: map.MapComponentController;
  private mapOptions?: mapCommon.MapOptions;
  private callback?: AsyncCallback<map.MapComponentController>;
  private mapEventManager?: map.MapEventManager;
  private pointAnnotation?: map.PointAnnotation;

  aboutToAppear(): void {
    // 地图初始化参数，设置地图中心点坐标及层级
    this.mapOptions = {
      position: {
        target: {
          latitude:  31.708887,
          longitude:  119.824760
        },
        zoom: 16
      },
      bounds:{
        northeast:{
          latitude: 31.715196,
          longitude:  119.831057
        },
        southwest:{
          latitude:31.702053,
          longitude:119.817324
        }
      }
    };

    this.callback = async (err, mapController) => {
      if (!err) {
        // 获取地图的控制器类，用来操作地图
        this.mapController = mapController;
        this.mapEventManager = this.mapController.getEventManager()
        this.mapController?.setMyLocationEnabled(true);
        // 启用我的位置按钮
        this.mapController?.setMyLocationControlsEnabled(true);

        let pointAnnotationOptions: mapCommon.PointAnnotationParams = {
          // 定义点注释图标锚点
          position: {
            latitude: 31.710004,
            longitude: 119.824340
          },
          // 定义点注释名称与地图poi名称相同时，是否支持去重
          repeatable: true,
          // 定义点注释的碰撞规则
          collisionRule: mapCommon.CollisionRule.NAME,
          // 定义点注释的标题，数组长度最小为1，最大为3
          titles: [{
            // 定义标题内容
            content: "蜜雪冰城",
            // 定义标题字体颜色
            color: 0xFF000000,
            // 定义标题字体大小
            fontSize: 15,
            // 定义标题描边颜色
            strokeColor: 0xFFFFFFFF,
            // 定义标题描边宽度
            strokeWidth: 2,
            // 定义标题字体样式
            fontStyle: mapCommon.FontStyle.ITALIC
          }
          ],
          // 定义点注释的图标，图标存放在resources/rawfile
          icon: "",
          // 定义点注释是否展示图标
          showIcon: true,
          // 定义点注释的锚点在水平方向上的位置
          anchorU: 0.5,
          // 定义点注释的锚点在垂直方向上的位置
          anchorV: 1,
          // 定义点注释的显示属性，为true时，在被碰撞后仍能显示
          forceVisible: false,
          // 定义碰撞优先级，数值越大，优先级越低
          priority: 3,
          // 定义点注释展示的最小层级
          minZoom: 2,
          // 定义点注释展示的最大层级
          maxZoom: 20,
          // 定义点注释是否可见
          visible: true,
          // 定义点注释叠加层级属性
          zIndex: 10
        }
        this.pointAnnotation = await this.mapController.addPointAnnotation(pointAnnotationOptions);

      }
    };
  }
  onPageShow(): void {
    // 建议页面切换到前台，调用地图组件的show方法
    if (this.mapController) {
      this.mapController.show();
    }
  }
  // 页面每次隐藏时触发一次，包括路由过程、应用进入后台等场景，仅@Entry装饰的自定义组件生效
  onPageHide(): void {
    // 建议页面切换到后台，调用地图组件的hide方法
    if (this.mapController) {
      this.mapController.hide();
    }
  }

  build() {

    NavDestination(){
      Stack() {
        // 调用MapComponent组件初始化地图
        MapComponent({ mapOptions: this.mapOptions, mapCallback: this.callback }).width('100%').height('100%')



      }.height('100%')


    } .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
      //this.cacheUIShareData.allowShowSideBar=false
    })
    .onHidden(()=>{
     // this.cacheUIShareData.allowShowSideBar=true
    })
  }

}