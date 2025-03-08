import { AppStorageV2, ComposeListItem } from "@kit.ArkUI"
import { CacheUIShareData, CacheUserShareData } from "../../appStorageV2/CacheShareData"
import { cczuStu } from "../../classes/cczuStu"
import { FunctionalButton, functionalButtonComponentManager } from "@kit.ScenarioFusionKit"
import { hilog } from "@kit.PerformanceAnalysisKit"
import common from "@ohos.app.ability.common"
import { preferences } from "@kit.ArkData"
import { deleteInfoToUserPreference, putInfoToUserPreference } from "../../tools/tool"
import { fileIo as fs } from '@kit.CoreFileKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { fileUri } from '@kit.CoreFileKit';
import url from "@ohos.url"

@ObservedV2
export class stuInfoClass{
  @Trace key:string=''
  @Trace value:string=''

  constructor(key:string,value:string) {
    this.key=key
    this.value=value
  }
}

@ComponentV2
export struct loginSheet{
  context=getContext()

  @Local account:string=''
  @Local name:string=''
  @Local password:string=''
  @Local profession:string=''
  @Local academy:string=''
  @Local class:string=''
  @Local schoolPlace:string=''
  @Local cacheUserShareData:CacheUserShareData = AppStorageV2.connect(CacheUserShareData,()=>new CacheUserShareData())!
  @Local cacheUiShareData: CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  @Local userPreference:preferences.Preferences = preferences.getPreferencesSync(getContext(this) as common.UIAbilityContext, { name: 'userPreference' });
  @Local url: ResourceStr = $r('app.media.cczu_helper_icon');

  @Local listArray:stuInfoClass[]=[
    new stuInfoClass('姓名',this.userPreference.getSync("account","") as string),
    new stuInfoClass('学号',this.userPreference.getSync("stuName","") as string),
    new stuInfoClass('校区',this.userPreference.getSync("schoolPlace","") as string),
    new stuInfoClass('学院',this.userPreference.getSync("academy","") as string),
    new stuInfoClass('专业',this.userPreference.getSync("profession","") as string),
    new stuInfoClass('班级',this.userPreference.getSync("class","") as string)

  ]

  build() {

    RelativeContainer(){

      if(!this.userPreference.getSync("isLogin",false) as boolean)
      {
        TextInput({placeholder:$r('app.string.inputAccount'),text:$$this.account})
          .type(InputType.Number)
          .alignRules({
            top: { anchor: "__container__", align: VerticalAlign.Top },
            left: { anchor: "__container__", align: HorizontalAlign.Start }
          })
          .id('account')


        TextInput({placeholder:$r('app.string.inputPassword'),text:$$this.password})
          .type(InputType.Password)
          .alignRules({
            top: { anchor: "account", align: VerticalAlign.Bottom },
            left: { anchor: "__container__", align: HorizontalAlign.Start }
          })
          .margin({top:20})

        Button("登录")
          .onClick(()=>{
            this.cacheUserShareData.student=new cczuStu(this.account,this.password)
            this.cacheUserShareData.student.loginToEducationalSystem()

          })
          .alignRules({
            bottom: { anchor: "__container__", align: VerticalAlign.Bottom },
            right: { anchor: "__container__", align: HorizontalAlign.End }
          }).margin({bottom:10})
      }else{

        Column(){
          FunctionalButton({
            params: {
              // OpenType.CHOOSE_AVATAR表示Button为选择头像类型
              openType: functionalButtonComponentManager.OpenType.CHOOSE_AVATAR,
              label: '',
              // 调整Button样式
              styleOption: {
                styleConfig: new functionalButtonComponentManager.ButtonConfig()
                  .type(ButtonType.Circle)
                  .backgroundImage(this.userPreference.getSync("stuAvatar","$r('app.media.cczu_helper_icon')") as ResourceStr)
                  .backgroundImageSize(ImageSize.Cover)
                  .width(120)
                  .height(120)
                  .backgroundColor('#E5E5E5')
              },
            },
            // OpenType为“CHOOSE_AVATAR”时，回调必须选择“onChooseAvatar”
            controller: new functionalButtonComponentManager.FunctionalButtonController().onChooseAvatar((err, data) => {
              if (err) {
                return;
              }
              console.log(`FUCK:${data.avatarUri}`)
              this.url=data.avatarUri!
              try {

                fs.mkdirSync(this.context.filesDir + `/user`)

                let oldPic = fs.openSync(data.avatarUri!,fs.OpenMode.READ_ONLY)

                let newPic = fs.openSync(this.context.filesDir + `/user/userAvatar.jpg`, fs.OpenMode.READ_WRITE | fs.OpenMode.CREATE)
                fs.moveFile(oldPic.path, newPic.path)
                fs.closeSync(oldPic);
                fs.closeSync(newPic);
                putInfoToUserPreference(this.context,'stuAvatar',newPic.path)

              }catch (err)
              {
                console.info(`FUCK:${err}`);
              }


            })
          }).id('avatar')
            .alignRules({
              top: { anchor: "__container__", align: VerticalAlign.Top },
              left: { anchor: "__container__", align: HorizontalAlign.Start }
            })

          List(){
            ForEach(this.listArray,(item:stuInfoClass)=>{
              ComposeListItem({
                contentItem: ({
                  primaryText: item.key,
                }),
                operateItem: ({ text: item.value })
              })
            },(item:stuInfoClass)=>item.key)

          }.backgroundColor($r('sys.color.comp_background_list_card'))
          .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 18, endMargin: 18 })
          .borderRadius(20)
          .alignRules({
            top: { anchor: "avatar", align: VerticalAlign.Bottom },
          })
          .margin({top:15})

          Button('退出登录')
            .onClick(()=>{
              putInfoToUserPreference(this.context,'isLogin',false)
              deleteInfoToUserPreference(this.context,'account')
              deleteInfoToUserPreference(this.context,'password')
              deleteInfoToUserPreference(this.context,'stuName')
              deleteInfoToUserPreference(this.context,'profession')
              deleteInfoToUserPreference(this.context,'academy')
              deleteInfoToUserPreference(this.context,'class')
              deleteInfoToUserPreference(this.context,'schoolPlace')
              this.cacheUiShareData.showLoginSheet = false


            })
            .width('150')
            .backgroundColor('#ED3A55')
            .alignRules({
              bottom: { anchor: "__container__", align: VerticalAlign.Bottom },
            })
            .margin({top:10})

        }.width('100%')

      }

    }.width('90%')

  }

}