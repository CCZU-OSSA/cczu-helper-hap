import { CacheUIShareData } from "../appStorageV2/CacheShareData"
import { AppStorageV2 } from "@kit.ArkUI"

@Builder
export function tripartiteLibraryBuilder()
{
  tripartiteLibrary()
}

@ComponentV2
export struct tripartiteLibrary{
  @Local cacheUIShareData:CacheUIShareData = AppStorageV2.connect(CacheUIShareData,()=>new CacheUIShareData())!
  pageInfos: NavPathStack = new NavPathStack()

  build() {
    NavDestination(){
      Text("2")
    }
    .backgroundColor($r('sys.color.comp_background_gray'))
    .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
    })
    .onHidden(()=>{
    })

  }

}