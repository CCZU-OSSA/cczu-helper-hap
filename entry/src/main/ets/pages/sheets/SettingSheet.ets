import { ComposeListItem, IconType } from '@ohos.arkui.advanced.ComposeListItem'
import { SegmentButton, SegmentButtonItemTuple, SegmentButtonOptions, } from '@ohos.arkui.advanced.SegmentButton'
import { CacheSysShareData } from '../../appStorageV2/CacheShareData'
import { AppStorageV2 } from '@kit.ArkUI'
import { i18n } from '@kit.LocalizationKit'
import { common } from '@kit.AbilityKit'
import { preferences } from '@kit.ArkData'
import { putInfoToUserPreference, setDarkMode } from '../../tools/tool'

let cacheSysShareData: CacheSysShareData = AppStorageV2.connect(CacheSysShareData, () => new CacheSysShareData())!
@Component
export struct SettingSheet {

  private context = getContext(this) as common.UIAbilityContext

  @State singleSelectCapsuleOptions: SegmentButtonOptions = SegmentButtonOptions.capsule({
    buttons:
    [{ text: $r('app.string.open') }, { text: $r('app.string.close') }, { text: $r('app.string.followSystem') }] as SegmentButtonItemTuple,
    multiply: false,
    backgroundBlurStyle: BlurStyle.BACKGROUND_THICK
  })

  @State languageArray: Resource[] =
    [$r('app.string.followSystem'), $r('app.string.simplified_chinese'), $r('app.string.english_us')]

  @State isShowMoreLanguage: boolean = false

  @State userPreference:preferences.Preferences = preferences.getPreferencesSync(this.context, { name: 'userPreference' });

  @State @Watch('ChangeDarkMode') darkModeChoose: number[] = [this.userPreference.getSync("userPreferDarkMode",2) as number]
  ChangeDarkMode(){
    putInfoToUserPreference(this.context,'userPreferDarkMode',this.darkModeChoose[0])
    setDarkMode(this.context,this.darkModeChoose[0])
  }

   ChangeDarkModeRightInfoFun(index: number) {
    if (index == 0) {
      return  $r('app.string.open')
    } else if (index == 1) {
      return  $r('app.string.close')
    } else if (index == 2) {
      return  $r('app.string.followSystem')
    }
    return

  }

   ChangePreferLanguage(id:number){
    putInfoToUserPreference(this.context,'userPreferLanguage',id)
    switch (id) {
      case 0:
        i18n.System.setAppPreferredLanguage(i18n.System.getSystemLanguage());
        i18n.System.setAppPreferredLanguage("default");
        break;
      case 1:
        i18n.System.setAppPreferredLanguage("zh-CN");
        break;
      case 2:
        i18n.System.setAppPreferredLanguage("en-US");
        break;
    }
  }

  build() {
    Scroll(){
      Column() {

        Column() {
          Text($r('app.string.SettingShow'))
            .width('100%')
            .fontSize('20')
            .fontWeight(FontWeight.Bold)

          List() {

            ListItem() {
              Column() {
                ComposeListItem({
                  contentItem: {
                    iconStyle: IconType.SYSTEM_ICON,
                    icon: $r("app.media.icon_setting_darkmode"),
                    primaryText: $r('app.string.SettingDarkMode')
                  },
                  operateItem: { text: this.ChangeDarkModeRightInfoFun(this.darkModeChoose[0]) }
                })
                SegmentButton({
                  options: this.singleSelectCapsuleOptions,
                  selectedIndexes: $darkModeChoose
                })
                  .width('90%')

              }
            }

            ComposeListItem({
              contentItem: {
                iconStyle: IconType.SYSTEM_ICON,
                icon: $r("app.media.icon_setting_globa_language"),
                primaryText: $r('app.string.SettingLanguage')
              },
              operateItem: {
                icon: {
                  value: this.isShowMoreLanguage ? $r('sys.media.ohos_ic_public_arrow_up') :
                  $r('sys.media.ohos_ic_public_arrow_down')
                }
              }
            })
              .onClick(() => {
                animateTo({ curve: Curve.Ease, duration: 200 }, () => {
                  this.isShowMoreLanguage = !this.isShowMoreLanguage
                })
              })

            if (this.isShowMoreLanguage) {
              ForEach(this.languageArray, (item: string, id: number) => {
                ComposeListItem({ contentItem: { primaryText: item }, operateItem: { radio: { isCheck:(this.userPreference.getSync("userPreferLanguage",0)==id?true:false),onChange:()=>{
                  this.ChangePreferLanguage(id)
                }} } }).margin({ left: 4 })
                  .onClick(()=>{
                     this.ChangePreferLanguage(id)
                  })
              },(item:string)=>item)
            }


          }.width('100%')
          .backgroundColor($r('sys.color.comp_background_list_card'))
          .borderRadius(20)
          .margin({ top: 5 })

        }.width('90%')

        Column() {
          Text($r('app.string.amusementSetting'))
            .width('100%')
            .fontSize('20')
            .fontWeight(FontWeight.Bold)

          List() {

            ComposeListItem({
              contentItem: {
                iconStyle: IconType.SYSTEM_ICON,
                icon: $r("app.media.icon_device_pad"),
                primaryText: $r('app.string.timeforfantasy')
              },
              operateItem: {
                switch: {
                  isCheck: true, onChange: () => {

                  }
                }
              }
            })

          }.width('100%')
          .backgroundColor($r('sys.color.comp_background_list_card'))
          .borderRadius(20)
          .margin({ top: 5 })

        }.width('90%')
        .margin({ top: 10 })

      }
      .width('100%')
      .height('100%')
      .margin({ top: 10,bottom:20 })
    }.height('100%')
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring,{alwaysEnabled:true})

  }
}