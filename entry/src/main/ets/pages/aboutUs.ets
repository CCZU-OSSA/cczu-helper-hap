import { ComposeListItem } from "@ohos.arkui.advanced.ComposeListItem"
import { CacheSysShareData, CacheUIShareData } from "../appStorageV2/CacheShareData"
import { AppStorageV2, promptAction } from "@kit.ArkUI"
import { pasteboard } from "@kit.BasicServicesKit"

@ComponentV2
export struct aboutUS{
  @Local cacheSysShareData:CacheSysShareData = AppStorageV2.connect(CacheSysShareData,()=>new CacheSysShareData())!
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!


  navigationMenuArray:NavigationMenuItem[]=[{
    icon: $r('sys.media.ohos_ic_public_more'),
    value: "",
    action:()=>{
      animateTo({curve:Curve.Ease,duration:600},()=>{
        this.cacheUIShareData.showSideBar=!this.cacheUIShareData.showSideBar
      })}
  }]
  pageStack: NavPathStack = new NavPathStack()

  aboutToAppear(): void {
    if(this.cacheSysShareData.currentBreakpoint=='lg')
    {
      this.pageStack.replacePath({ name: "cczuWelcomeYou"})
    }
  }


  build() {
    Navigation(this.pageStack){
      Scroll(){
        Column(){
          Column(){
            Image($r('app.media.cczu_helper_icon')).width('120').borderRadius('20')
              .onClick(()=>{
                if(this.cacheSysShareData.currentBreakpoint=='lg')
                {
                  this.pageStack.replacePath({ name: "cczuWelcomeYou"})
                }else{
                  this.pageStack.pushPath({ name: "cczuWelcomeYou"})
                }
              })

            Text($r('app.string.aboutUSDescriptionAPP')).margin({top:10}).textAlign(TextAlign.Center)
            Text("Ver beta0.1.1")
          }.margin({bottom:50})

          List()
          {
            ComposeListItem({contentItem:{primaryText:$r('app.string.versionInfoAndFeatures')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
              .onClick(()=>{
                if(this.cacheSysShareData.currentBreakpoint=='lg') {
                  this.pageStack.replacePath({ name: "updateHistory"})
                }else{
                  this.pageStack.pushPath({ name: "updateHistory"})
                }
              })
            ComposeListItem({contentItem:{primaryText:$r('app.string.checkForUpdate')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .width('90%')
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })
          .borderRadius('20')
          .margin({bottom:15})

          List()
          {
            ComposeListItem({contentItem:{primaryText:$r('app.string.gitForThisApp')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
            ComposeListItem({contentItem:{primaryText:$r('app.string.QQGroup')},operateItem:{text:'947560153'}})
              .onClick(()=>{
                let pasteData = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, '947560153');
                pasteboard.getSystemPasteboard().setData(pasteData) //写入剪切板
                promptAction.showToast({
                  message:$r('app.string.copy_succeed'),
                  duration: 2000
                });
              })
          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .width('90%')
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })
          .borderRadius('20')
          .margin({bottom:15})

          List()
          {
            ComposeListItem({contentItem:{primaryText:$r('app.string.tripartiteLibrary')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
              .onClick(()=>{
                if(this.cacheSysShareData.currentBreakpoint=='lg')
                {
                  this.pageStack.replacePath({ name: "tripartiteLibrary"})
                }else{
                  this.pageStack.pushPath({ name: "tripartiteLibrary"})
                }
              })

            ComposeListItem({contentItem:{primaryText:$r('app.string.Acknowledgment')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
              .onClick(()=>{
                if(this.cacheSysShareData.currentBreakpoint=='lg')
                {
                  this.pageStack.replacePath({ name: "acknowledgment"})
                }else{
                  this.pageStack.pushPath({ name: "acknowledgment"})
                }
              })

          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })
          .width('90%')
          .borderRadius('20')

        }
      }

    }.title($r('app.string.aboutUS'))
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    .navBarWidth('500')
    .menus(this.navigationMenuArray)

  }
}