@ObservedV2
export class historyUpdateClass {
  version: string = ''
  date: string = ''
  addNewFunArray: string[] | undefined = undefined
  fixBugsArray: string[] | undefined = undefined
  optimizeArray: string[] | undefined = undefined
  @Trace isShow: boolean = false

  constructor(version: string, date: string,
    addNewFunArray: string[] | undefined,
    fixBugsArray: string[] | undefined,
    optimizeArray: string[] | undefined,
  ) {
    this.version = version
    this.date = date
    this.addNewFunArray = addNewFunArray
    this.fixBugsArray = fixBugsArray
    this.optimizeArray = optimizeArray
  }
}
