import { CacheUIShareData, CacheUserShareData } from "../appStorageV2/CacheShareData"
import { AppStorageV2, promptAction } from "@kit.ArkUI"
import { geoLocationManager } from "@kit.LocationKit"
import { BusinessError } from "@kit.BasicServicesKit"
import { preferences } from "@kit.ArkData"
import { common } from "@kit.AbilityKit"
import { cczuStu } from "../classes/cczuStu"

@ComponentV2
export struct service{
  context=getContext(this) as common.UIAbilityContext
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  @Local cacheUserShareData: CacheUserShareData = AppStorageV2.connect(CacheUserShareData,()=>new CacheUserShareData())!
  @Local userPreference:preferences.Preferences = preferences.getPreferencesSync(this.context, { name: 'userPreference' });

  pageStack: NavPathStack = new NavPathStack()
  navigationMenuArray:NavigationMenuItem[]=[{
    icon: $r('sys.media.ohos_ic_public_more'),
    value: "",
    action:()=>{
      animateTo({curve:Curve.Ease,duration:600},()=>{
        this.cacheUIShareData.showSideBar=!this.cacheUIShareData.showSideBar
      })}
  }]

   getCurrentLocationInfo() {
  const requestInfo: geoLocationManager.LocationRequest = {
    'priority': geoLocationManager.LocationRequestPriority.FIRST_FIX,
    'scenario': geoLocationManager.LocationRequestScenario.UNSET,
    'timeInterval': 1,
    'distanceInterval': 0,
    'maxAccuracy': 0
  };
  try {
    geoLocationManager.getCurrentLocation(requestInfo)
      .then((location: geoLocationManager.Location) => {
        promptAction.showToast({ message: JSON.stringify(location) });
        console.log(`${  JSON.stringify(location) }`)
      })
      .catch((err: BusinessError) => {
        console.error(`Failed to get current location. Code is ${err.code}, message is ${err.message}`);
      });
  } catch (err) {
    console.error(`Failed to get current location. Code is ${err.code}, message is ${err.message}`);
  }
}



  build() {
    Navigation(this.pageStack){
      Button()
        .onClick(()=>{

            this.cacheUserShareData.student?.getGradeFromEducationSystem()
            this.pageStack.pushPath({ name: "inquiryScore"})


        })

      LocationButton().onClick((event: ClickEvent, result: LocationButtonOnClickResult)=>{
        if (result === LocationButtonOnClickResult.SUCCESS) {
          // 免去权限申请和权限请求等环节，获得临时授权，获取位置信息授权
          this.getCurrentLocationInfo();
        } else {
          promptAction.showToast({ message: '获取位置信息失败！' })
        }
        this.pageStack.pushPath({ name: "schoolNativeMap"})

      })
    }.menus(this.navigationMenuArray)
    .navBarWidth('500')
  }

}