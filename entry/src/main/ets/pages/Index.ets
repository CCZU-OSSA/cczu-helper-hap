import { ComposeListItem, IconType } from '@ohos.arkui.advanced.ComposeListItem'
import { CacheSysShareData, CacheUIShareData, CacheUserShareData } from '../appStorageV2/CacheShareData';
import { AppStorageV2, promptAction, } from '@kit.ArkUI';
import { SettingSheet } from './sheets/SettingSheet';
import { aboutUS } from './aboutUs';
import { preferences } from '@kit.ArkData';
import { common } from '@kit.AbilityKit';
import { schedule } from './schedule';
import { service } from './service';
import { loginSheet } from './sheets/loginSheet';
import { cczuStu } from '../classes/cczuStu';

@Entry
@ComponentV2
struct Index {
   context=getContext()
  @Local listArray:Resource[]=[$r('app.string.schedule'),$r('app.string.service'),$r('app.string.setting'),$r('app.string.aboutUS')]
  @Local tabArray:Resource[]=[$r('app.string.schedule'),$r('app.string.service'),$r('app.string.aboutUS')]

  @Local listItemIcon:ResourceStr|undefined=undefined
  @Local tabsController:TabsController=new TabsController();
  @Local focusTabId:number=0

  @Local cacheSysShareData:CacheSysShareData = AppStorageV2.connect(CacheSysShareData,()=>new CacheSysShareData())!
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  @Local userPreference:preferences.Preferences = preferences.getPreferencesSync(getContext(this) as common.UIAbilityContext, { name: 'userPreference' });
  @Local cacheUserShareData: CacheUserShareData = AppStorageV2.connect(CacheUserShareData,()=>new CacheUserShareData())!

  @Local isShowSettingSheet:boolean=false

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
      return $r("app.media.icon_moreinfo")
    }
    return
  }

  @Builder
  SettingSheetBuilder()
  {
    SettingSheet()
  }

  @Builder
  loginSheetBuilder()
  {
    loginSheet()
  }

  aboutToAppear() {
    if(this.cacheSysShareData.currentBreakpoint=='lg')
    {
      this.cacheUIShareData.showSideBar=true
    }
    if((this.userPreference.getSync("account","") as string)!=''&& (this.userPreference.getSync("password","") as string )!=''){
      this.cacheUserShareData.student=new cczuStu(this.userPreference.getSync("account","") as string,this.userPreference.getSync("password","") as string)
      this.cacheUserShareData.student.loginToEducationalSystem()
    }

  }



  build() {
    SideBarContainer(SideBarContainerType.AUTO) {
      //侧边栏
      Stack(){
        Navigation(){

          Image($r('app.media.cczu_helper_icon')).height('50')
            .onClick(()=>{
              if(this.cacheSysShareData.currentBreakpoint=='sm'){
                animateTo({curve:Curve.Ease,duration:600},()=>{
                  this.cacheUIShareData.showSideBar=false
                })
              }
              animateTo({curve:Curve.Ease,tempo:2},()=>{
                this.cacheUIShareData.showLoginSheet=true
              })

            })
            .bindSheet($$this.cacheUIShareData.showLoginSheet,this.loginSheetBuilder(), {
              preferType: SheetType.CENTER,
              title: { title: $r('app.string.personInfo') },
              backgroundColor: $r('sys.color.comp_background_gray'),
              height:600
            })

          List(){
            ForEach(this.listArray,(item:string,id:number)=>{
              ComposeListItem({contentItem:{iconStyle:IconType.SYSTEM_ICON, icon: this.ChangeListItemIconFun(id) ,primaryText:item}})
                .backgroundColor((id==this.focusTabId)?'':'')
                .onClick(()=>{

                  if(this.cacheSysShareData.currentBreakpoint!='lg'){
                    animateTo({curve:Curve.Ease,tempo:2},()=>{
                      this.cacheUIShareData.showSideBar=false
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
            },(item:string)=>item)
          }.height('100%')
          .width('90%')
        }.height('100%')
        .width('100%')
        .title($r('app.string.EntryAbility_label'))
        .titleMode(NavigationTitleMode.Mini)
        .hideBackButton(true)
        .backgroundColor($r('sys.color.background_tertiary'))
        .padding({ top: px2vp(this.cacheSysShareData.topRectHeight), bottom: px2vp(this.cacheSysShareData.bottomRectHeight) })
        .bindSheet($$this.isShowSettingSheet,this.SettingSheetBuilder(),{
          preferType:SheetType.CENTER,
          title:{title:$r('app.string.setting')},
          backgroundColor:$r('sys.color.comp_background_gray'),

        })


      }

      //内容区
      Column(){
        Stack(){
          Tabs({barPosition:BarPosition.Start,controller:this.tabsController  }){
            ForEach(this.tabArray,(item:string,index:number)=>{
              TabContent(){
               if(index==0)
               {
                 schedule()
               }
               else if(index==2)
               {
                  aboutUS()
               }else{
                 service()
               }
              }.padding({ top: px2vp(this.cacheSysShareData.topRectHeight) })
            })
          }.backgroundColor($r('sys.color.comp_background_gray'))
          .barHeight('0')
          .scrollable(false)


        }.height('100%')
        .width('100%')

      }.height('100%')
      .width('100%')
      .onClick(()=>{

        if(this.cacheSysShareData.currentBreakpoint=='sm'){
          animateTo({curve:Curve.Ease,duration:600},()=>{
            this.cacheUIShareData.showSideBar=false
          })
        }
      })

    }.height('100%')
    .width('100%')
    .showSideBar($$this.cacheUIShareData.showSideBar)
    .maxSideBarWidth(240)
    .showControlButton(false)


  }

}