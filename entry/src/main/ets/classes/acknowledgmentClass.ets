import App from "@system.app"

export class acknowledgmentClass{
  name:string=''
  avatar:ResourceStr|undefined=undefined
  info?:string=''
  bilibili?:string=''
  appInfo?:string=''
  appBundle?:string=''
  githubHome?:string=''

  constructor(name:string,avatar:ResourceStr|undefined,info:string,bilibili?:string,appInfo?:string,appBundle?:string,githubHome?:string) {
    this.name=name
    this.avatar=avatar
    this.info=info
    this.bilibili=bilibili
    this.appInfo=appInfo
    this.appBundle=appBundle
    this.githubHome=githubHome
  }



}