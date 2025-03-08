import { cczuStu } from "../classes/cczuStu"

@ObservedV2
export class CacheSysShareData{
  @Trace topRectHeight:number=0
  @Trace bottomRectHeight:number=0
  @Trace currentBreakpoint:string=''
}

@ObservedV2
export class CacheUIShareData{
  @Trace showSideBar:boolean=false
  @Trace showLoginSheet:boolean=false
}

@ObservedV2
export class CacheUserShareData{
  @Trace student:cczuStu|undefined=undefined
}