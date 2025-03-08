import { historyUpdateClass } from "../classes/histoyUpdateClass"
import { ComposeListItem } from "@ohos.arkui.advanced.ComposeListItem"
import { CacheUIShareData } from "../appStorageV2/CacheShareData"
import { AppStorageV2 } from "@kit.ArkUI"

@Builder
export function updateHistoryBuilder()
{
  updateHistory()
}

@ComponentV2
export struct updateHistory{
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  @Local historyArray:historyUpdateClass[]=[
    new historyUpdateClass("beta0.1.0","2025/2/26",["初步完成"],undefined,undefined),
  ]

  pageInfos: NavPathStack = new NavPathStack()

  build() {
    NavDestination(){
      List(){

        ForEach(this.historyArray,(item:historyUpdateClass)=>{

          ListItemGroup(){

            ComposeListItem({contentItem:{primaryText:item.version,secondaryText:item.date},operateItem:{icon:{value:item.isShow?$r('sys.media.ohos_ic_public_arrow_up'):$r('sys.media.ohos_ic_public_arrow_down')}}})

            if(item.isShow==true)
            {
              ListItem(){
                Column(){
                  if(item.addNewFunArray!=undefined){
                    Text("【新增功能】").width('100%')
                    ForEach(item.addNewFunArray,(newFun:string)=>{
                      Text(newFun).width('100%')
                    })
                  }

                  if(item.fixBugsArray!=undefined){
                    Text("【BUG修复】").width('100%')
                    ForEach(item.fixBugsArray,(fixBug:string)=>{
                      Text(fixBug).width('100%')
                    })
                  }

                  if(item.optimizeArray!=undefined){
                    Text("【优化更新】").width('100%')
                    ForEach(item.optimizeArray,(optimize:string)=>{
                      Text(optimize).width('100%')
                    })
                  }
                }
              }.margin({left:20})
            }

          }.onClick(()=>{
            animateTo({curve:Curve.Ease,duration:400},()=>{
              item.isShow=!item.isShow
            })
          })

        },(item:historyUpdateClass) => item.version)

      }.backgroundColor($r('sys.color.comp_background_list_card'))
      .width('90%')
      .borderRadius('20')
      .divider({ strokeWidth:0.5 ,color:$r('sys.color.comp_divider'), startMargin: 20, endMargin: 20 })

    }
    .backgroundColor($r('sys.color.comp_background_gray'))
    .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
    })
    .onHidden(()=>{
    })
    .width('100%')
    .height('100%')
    .title($r('app.string.versionInfoAndFeatures'))

  }

}