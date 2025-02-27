import { ComposeListItem, IconType } from '@ohos.arkui.advanced.ComposeListItem'
import { CacheSysShareData } from '../appStorageV2/CacheSysShareData';
import { AppStorageV2, } from '@kit.ArkUI';
import { SettingSheet } from './sheets/SettingSheet';
import { aboutUS } from './aboutUs';

@Entry
@ComponentV2
struct Index {

  @Local listArray:Array<string>=["课表","服务","设置","关于我们"]
  @Local tabArray:Array<string>=["课表","服务","关于我们"]

  @Local isShowSideBar:boolean=false
  @Local isShowSettingSheet:boolean=false

  @Local listItemIcon:ResourceStr|undefined=undefined
  @Local tabsController:TabsController=new TabsController();
  @Local focusTabId:number=0

  @Local cacheSysShareData:CacheSysShareData = AppStorageV2.connect(CacheSysShareData,()=>new CacheSysShareData())!

  ChangeListItemIconFun(id:number){
    if(id==0)
    {
      return $r('sys.media.calendar_badge_play')
    }
    else if(id==1)
    {
      return $r('sys.media.person_shield')
    }
    else if(id==2)
    {
      return $r('app.media.icon_settting')
    }else if(id==3)
    {
      return $r('app.media.moreInfo')
    }
    return
  }

  @Builder
  SettingSheetBuilder()
  {
    SettingSheet()
  }

  aboutToAppear() {
    if(this.cacheSysShareData.currentBreakpoint=='lg')
    {
      this.isShowSideBar=true
    }
  }

  build() {
    SideBarContainer(SideBarContainerType.AUTO) {
      //侧边栏
      Stack(){
        Navigation(){

          List(){
            ForEach(this.listArray,(item:string,id:number)=>{
              ComposeListItem({contentItem:{iconStyle:IconType.SYSTEM_ICON, icon: this.ChangeListItemIconFun(id) ,primaryText:item}})
                .backgroundColor((id==this.focusTabId)?'':'')
                .onClick(()=>{

                  if(this.cacheSysShareData.currentBreakpoint!='lg'){
                    animateTo({curve:Curve.Ease,tempo:2},()=>{
                      this.isShowSideBar=false
                    })
                  }

                  if(id==2){
                    this.isShowSettingSheet=true
                  }else{
                    if(id==3){
                      this.tabsController.changeIndex(2)
                      this.focusTabId=id
                    }else{
                      this.tabsController.changeIndex(id)
                      this.focusTabId=id
                    }

                  }
                })
            })
          }.height('100%')
          .width('90%')
        }.height('100%')
        .width('100%')
        .title("常大助手")
        .titleMode(NavigationTitleMode.Mini)
        .hideBackButton(true)
        .backgroundColor($r('sys.color.background_tertiary'))
        .padding({ top: px2vp(this.cacheSysShareData.topRectHeight), bottom: px2vp(this.cacheSysShareData.bottomRectHeight) })
        .bindSheet($$this.isShowSettingSheet,this.SettingSheetBuilder(),{
          preferType:SheetType.CENTER,
          title:{title:'设置'},
          backgroundColor:$r('sys.color.comp_background_gray')
        })

        if ((this.cacheSysShareData.currentBreakpoint=='lg'&&this.isShowSettingSheet))
        {
          Column().height('100%').width('100%').backdropBlur(20)
        }

      }

      //内容区
      Column(){
        Stack(){
          Tabs({barPosition:BarPosition.Start,controller:this.tabsController  }){
            ForEach(this.tabArray,(item:string,index:number)=>{
              TabContent(){
               if(index==2)
               {
                  aboutUS()
               }
              }.padding({ top: px2vp(this.cacheSysShareData.topRectHeight), bottom: px2vp(this.cacheSysShareData.bottomRectHeight) })
            })
          }.backgroundColor($r('sys.color.comp_background_gray'))
          .barHeight('0')
          .scrollable(false)

          if ((this.cacheSysShareData.currentBreakpoint=='sm'&&this.isShowSideBar)||this.isShowSettingSheet)
          {
            Column().height('100%').width('100%').backdropBlur(20)
          }
        }.height('100%')
        .width('100%')

      }.height('100%')
      .width('100%')
      .onClick(()=>{

        if(this.cacheSysShareData.currentBreakpoint=='sm'){
          animateTo({curve:Curve.Ease,duration:600},()=>{
            this.isShowSideBar=false
          })
        }
      })

    }.height('100%')
    .width('100%')
    .showSideBar($$this.isShowSideBar)
    .showControlButton(false)
    .maxSideBarWidth(240)
    .gesture(
      PanGesture({fingers:1,direction:PanDirection.Right})
        .onActionEnd(()=>{
          animateTo({curve:Curve.Ease,duration:600},()=>{
            this.isShowSideBar=true
          })
        })
    )
    .gesture(
      PanGesture({fingers:1,direction:PanDirection.Left})
        .onActionEnd(()=>{
          animateTo({curve:Curve.Ease,duration:600},()=>{
            this.isShowSideBar=false
          })
        })
    )


  }

}