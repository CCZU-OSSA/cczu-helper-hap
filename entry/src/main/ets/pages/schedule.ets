import { CacheUIShareData, CacheUserShareData } from "../appStorageV2/CacheShareData";
import { AppStorageV2 } from "@kit.ArkUI";
import { preferences } from "@kit.ArkData";
import { common } from "@kit.AbilityKit";

@ComponentV2
export struct schedule{
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  @Local cacheUserShareData:CacheUserShareData = AppStorageV2.connect(CacheUserShareData,()=>new CacheUserShareData())!

  @Local scroller:Scroller=new Scroller()
  @Local scheduleArray:string[]=['1','2','3']
  @Local scheduleWeekList:string[]=['2025\n3月','周一','周二','周三','周四','周五','周六','周日']
  @Local scheduleTimeList:string[]=['8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40','8:00\n8:40']
  @Local userPreference:preferences.Preferences = preferences.getPreferencesSync(getContext(this) as common.UIAbilityContext, { name: 'userPreference' });

  @Local today:Date=new Date;

  @Local class:string[]=['1','2','3']

  navigationMenuArray:NavigationMenuItem[]=[{
    icon: $r('sys.media.ohos_ic_public_more'),
    value: "",
    action:()=>{
      animateTo({curve:Curve.Ease,duration:600},()=>{
        this.cacheUIShareData.showSideBar=!this.cacheUIShareData.showSideBar
    })}
  }]

  build() {

    Navigation(){

      Button()
        .onClick(()=>{
          console.log(`FUCK${this.userPreference.getSync("profession","") as string}`)
        })



      /*Swiper(){f
        ForEach(this.scheduleArray,(item:string)=>{
          Column() {
            RelativeContainer() {

              Grid(){
                ForEach(this.scheduleWeekList,(day:string,index:number)=>{
                  GridItem(){
                    Text(day).textAlign(TextAlign.Center)
                  }
                })
              }
              .width('100%')
              .columnsTemplate('45vp 1fr 1fr 1fr 1fr 1fr 1fr ')
              .height('45')
              .columnsGap('5')




            }.height('100%')
            .width('100%')
          }
        })
      }.loop(true)
      .height('100%')
      .width('100%')
      .index(1)
      .margin({left:10})
      .indicator(false)*/

    }.title(/*$r('app.string.schedule')*/this.today.getFullYear().toString()+'/'+(this.today.getMonth()+1).toString()+'/'+this.today.getDate().toString())
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    .height('100%')
    .width('100%')
    .mode(NavigationMode.Stack)
    .menus(this.navigationMenuArray)


  }
}