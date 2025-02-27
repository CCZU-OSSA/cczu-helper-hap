import { ComposeListItem, IconType } from "@ohos.arkui.advanced.ComposeListItem"
import {
  SegmentButton,
  SegmentButtonItemTuple,
  SegmentButtonOptions,  } from "@ohos.arkui.advanced.SegmentButton"
import { CacheSysShareData } from "../../appStorageV2/CacheSysShareData"
import { AppStorageV2 } from "@kit.ArkUI"
import { radio } from "@kit.TelephonyKit"

let cacheSysShareData:CacheSysShareData = AppStorageV2.connect(CacheSysShareData,()=>new CacheSysShareData())!

@Component
export struct SettingSheet{


  @State singleSelectCapsuleOptions: SegmentButtonOptions = SegmentButtonOptions.capsule({
    buttons:
    [{ text: '开启' }, { text: '关闭' }, { text: '跟随系统' }] as SegmentButtonItemTuple,
    multiply: false,
    backgroundBlurStyle: BlurStyle.BACKGROUND_THICK
  })

  @State languageArray:Array<string>=["跟随系统","简体中文","英语"]

  @State isShowMoreLanguage:boolean=false

  @State singleSelectCapsuleSelectedIndexes: number[] = [0]

  ChangeDarkModeRightInfoFun(index:number){
    if(index==0){
      return "开启"
    }
    else if(index==1)
    {
      return "关闭"
    }
    else if(index==2)
    {
      return "跟随系统"
    }
    return

  }

  build() {

    Column(){

      Column(){
        Text($r('app.string.SettingShow'))
          .width('100%')
          .fontSize('20')
          .fontWeight(FontWeight.Bold)

        List(){

          ListItem(){
            Column(){
              ComposeListItem({contentItem:{iconStyle:IconType.SYSTEM_ICON,icon:$r('app.media.setting_darkmode'),primaryText:$r('app.string.SettingDarkMode')},operateItem:{text:this.ChangeDarkModeRightInfoFun(this.singleSelectCapsuleSelectedIndexes[0])}})
              SegmentButton({ options: this.singleSelectCapsuleOptions,
                selectedIndexes: $singleSelectCapsuleSelectedIndexes })
                .width('90%')
            }
          }

          ComposeListItem({contentItem:{iconStyle:IconType.SYSTEM_ICON,icon:$r('app.media.setting_global'),primaryText:$r('app.string.SettingLanguage')},operateItem:{icon:{value:this.isShowMoreLanguage?$r('sys.media.ohos_ic_public_arrow_up'):$r('sys.media.ohos_ic_public_arrow_down')}}})
            .onClick(()=>{
              animateTo({curve:Curve.Ease,duration:600},()=>{
                this.isShowMoreLanguage=!this.isShowMoreLanguage
              })
            })

          if(this.isShowMoreLanguage)
          {
            ForEach(this.languageArray,(item:string)=>{
              ComposeListItem({contentItem:{primaryText:item},operateItem:{radio:{}}}).margin({left:40})
            })
          }


        }.width('100%')
        .backgroundColor($r('sys.color.comp_background_list_card'))
        .borderRadius(20)
        .margin({top:5})

      }.width('90%')

      if(cacheSysShareData.currentBreakpoint=='lg')
      {
        Column(){
          Text($r('app.string.SettingPad'))
            .width('100%')
            .fontSize('20')
            .fontWeight(FontWeight.Bold)

          List(){


          }.width('100%')
          .backgroundColor($r('sys.color.comp_background_list_card'))
          .borderRadius(20)
          .margin({top:5})

        }.width('90%')
        .margin({top:10})

      }


    }
    .width('100%')
    .height('100%')
    .margin({top:10})
  }

}