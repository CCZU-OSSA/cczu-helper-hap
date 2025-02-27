import { ComposeListItem } from "@ohos.arkui.advanced.ComposeListItem"

@ComponentV2
export struct aboutUS{

  build() {
    Navigation(){
      Scroll(){
        Column(){
          Column(){
            Image($r('app.media.cczu_helper_icon')).width('120').borderRadius('20')
            Text($r('app.string.aboutUSDescriptionAPP')).margin({top:10})
            Text("Ver beta0.1.1")
          }.margin({bottom:50})

          List()
          {
            ComposeListItem({contentItem:{primaryText:$r('app.string.versionInfoAndFeatures')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
            ComposeListItem({contentItem:{primaryText:$r('app.string.checkForUpdate')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .width('90%')
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })
          .borderRadius('20')
          .margin({bottom:15})

          List()
          {
            ComposeListItem({contentItem:{primaryText:$r('app.string.gitForThisApp')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
            ComposeListItem({contentItem:{primaryText:$r('app.string.QQGroup')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .width('90%')
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })
          .borderRadius('20')
          .margin({bottom:15})

          List()
          {
            ComposeListItem({contentItem:{primaryText:$r('app.string.tripartiteLibrary')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
            ComposeListItem({contentItem:{primaryText:$r('app.string.Acknowledgment')},operateItem:{icon:{value:$r('sys.media.ohos_ic_public_arrow_right')}}})
          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .width('90%')
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })
          .borderRadius('20')

        }
      }

    }.title($r('app.string.aboutUS'))
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    .navBarWidth('550')
  }
}