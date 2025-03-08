import { CacheUIShareData } from "../appStorageV2/CacheShareData"
import { AppStorageV2, promptAction} from "@kit.ArkUI"
import { Iacknowledgment } from "../interfaces/Iacknowledgment"
import { productViewManager } from '@kit.StoreKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import type { common, Want } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';

@Builder
export function acknowledgmentBuilder()
{
  acknowledgment()
}


@ComponentV2
export struct acknowledgment{
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  pageInfos: NavPathStack = new NavPathStack()

  context=getContext(this) as common.UIAbilityContext

  @Local acknowledgmentArray:Iacknowledgment[]=[
    {name:'琉离铟落linder',info:'鸿蒙端开发',avatar:$r('app.media.avatar_linder'),bilibili:'473413928',githubHome:'liluolinder'},
    {name:'stu_wang',info:'IOS端开发',avatar:$r('app.media.avatar_stuwang'),bilibili:'400484648'},
    {name:'Jennie',info:'提供账号，供我DDOS(划掉)测试',avatar:$r('app.media.avatar_ddos'),barrier:'学号'},
    {name:'鱼-salmon',info:'溏心音乐开发者、提供技术支持',avatar:$r('app.media.avatar_yu'),bilibili:'299579466',appInfo:'溏心音乐',appBundle:'com.salmon.sweetmusic'},
    {name:'乂心',info:'像素匠开发者、提供技术支持',avatar:$r('app.media.avatar_yixin'),bilibili:'441929890',appInfo:'像素匠',appBundle:'com.soulharbor.pixelartisan'},
    {name:'莼莼',info:'认元学横开发者、提供技术支持',avatar:$r('app.media.avatar_chunchun'),appInfo:'认元学横',appBundle:'ren.yuan.xueheng'},
  ]

  build() {
    NavDestination(){

      List({space:10}){
        ForEach(this.acknowledgmentArray,(item:Iacknowledgment)=>{

          ListItem(){

            RelativeContainer(){

              Image(item.avatar).width('55').height('55')
                .clipShape(new Circle({ width: '55', height: '55' }))
                .alignRules({
                  top: { anchor: "__container__", align: VerticalAlign.Top },
                  left: { anchor:'__container__', align: HorizontalAlign.Start }
                }).margin({top:10,left:10})
                .id('avatar')

              Text(item.name).id('name')
                .fontWeight(FontWeight.Bold)
                .fontSize(20)
                .margin({bottom:10})
                .margin({left:10})
                .alignRules({
                  top: { anchor: "avatar", align: VerticalAlign.Top },
                  left: { anchor:'avatar', align: HorizontalAlign.End }

                })
              Marquee({start:true,src:item.info})
                .margin({left:10,right:10})
                .opacity(0.75)
                .alignRules({
                  bottom: { anchor: "avatar", align: VerticalAlign.Bottom },
                  left: { anchor:'avatar', align: HorizontalAlign.End },
                  right:{anchor:'__container__', align: HorizontalAlign.End}
                })
              List({space:10}){
                if(item.appInfo!=undefined &&item.appBundle!=undefined)
                {
                  ListItem(){
                    Text(item.appInfo).fontColor($r('app.color.linder_blue'))
                  }.width('80').height('30').backgroundColor($r('sys.color.comp_background_tertiary')).borderRadius(20)
                  .onClick(()=>{
                    const wantParam: Want = {
                      parameters: {
                        bundleName: item.appBundle!,
                      }
                    }
                     productViewManager.loadProduct(this.context,wantParam);
                  })
                }
                if(item.githubHome!=undefined)
                {
                  ListItem(){
                    Text("Github").fontColor($r('app.color.pixelartisan_blue'))
                  }.width('80').height('30').backgroundColor($r('sys.color.comp_background_tertiary')).borderRadius(20)
                  .onClick(() => {
                    let want: Want ={
                      action: 'ohos.want.action.viewData',
                      entities: ['entity.system.browsable'],
                      uri: 'https://github.com/'+item.githubHome,
                    }
                    this.context.startAbility(want)
                  })
                }
                if(item.bilibili!=undefined)
                {
                  ListItem(){
                    Text("BiliBili").fontColor($r('app.color.linder_pink'))
                  }.width('80').height('30').backgroundColor($r('sys.color.comp_background_tertiary')).borderRadius(20)
                  .onClick(() => {
                    let want: Want ={
                      action: 'ohos.want.action.viewData',
                      entities: ['entity.system.browsable'],
                      uri: 'https://space.bilibili.com/'+item.bilibili,
                    }
                    this.context.startAbility(want)
                  })
                }
                if(item.barrier!=undefined)
                {
                  ListItem(){
                    Text(item.barrier).fontColor(Color.Black)
                  }.width('80').height('30').backgroundColor($r('sys.color.comp_background_tertiary')).borderRadius(20)
                  .onClick(()=>{
                    promptAction.showToast({ message: `怎么点都不会有更多的，哼(￢︿̫̿￢☆)😕` });
                  })
                }
              }
              .scrollBar(BarState.Off)
              .margin({top:20,bottom:10})
              .listDirection(Axis.Horizontal)
              .alignRules({
                top: { anchor: "avatar", align: VerticalAlign.Bottom },
                left: { anchor:'avatar', align: HorizontalAlign.Start },
                right: { anchor:'__container__', align: HorizontalAlign.End }
              })

            }.width('100%')

          }
          .height('125')
          .width('100%')
          .backgroundColor($r('sys.color.comp_background_list_card'))
          .borderRadius(20)
          .clickEffect({level:ClickEffectLevel.HEAVY, scale: 0.7})

        })
      }.width('90%')
      .height('100%')
      .edgeEffect(EdgeEffect.Spring,{ alwaysEnabled: true })
      .scrollSnapAlign(ScrollSnapAlign.START)
      .scrollBar(BarState.Off)



    }.width('100%')
    .title($r('app.string.Acknowledgment'))
    .backgroundColor($r('sys.color.comp_background_gray'))
    .margin({bottom:10})
    .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
    })
    .onHidden(()=>{
    })

  }

}