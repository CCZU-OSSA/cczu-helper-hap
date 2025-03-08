import { http } from '@kit.NetworkKit'
import { JSON } from '@kit.ArkTS'
import { AppStorageV2, promptAction } from '@kit.ArkUI'
import { CacheUIShareData, CacheUserShareData } from '../appStorageV2/CacheShareData'
import { preferences } from '@kit.ArkData'
import { common } from '@kit.AbilityKit'
import { putAccountWithPasswordToUserPreference, putInfoToUserPreference } from '../tools/tool'


let cacheUserShareData: CacheUserShareData = AppStorageV2.connect(CacheUserShareData, () => new CacheUserShareData())!
let cacheUIShareData: CacheUIShareData = AppStorageV2.connect(CacheUIShareData, () => new CacheUIShareData())!
let userPreference: preferences.Preferences =
  preferences.getPreferencesSync(getContext(this) as common.UIAbilityContext, { name: 'userPreference' });

@ObservedV2
export class cczuStu {
  account: string = ''
  password: string = ''
  authorization: string = ''
  term: string = ''
  name: string = ''
  @Trace gradeArray:cczuClass[]|undefined=undefined
  @Trace stuInfomation:stuInfo|undefined=undefined
  web: string = 'http://202.195.102.7:8180/api'
 context=getContext()

  constructor(account: string, password: string) {
    this.account = account
    this.password = password
  }

  loginToEducationalSystem() :boolean{
    let req = http.createHttp()

    req.request(this.web + '/login', {
      method: http.RequestMethod.POST,
      header: {},
      extraData: {
        'userid': this.account,
        'userpwd': this.password,
      },

    })
      .then((httpRes: http.HttpResponse) => {
        let obj = JSON.parse(JSON.stringify(httpRes))
        let result = JSON.parse((obj as object)?.['result'])

        this.authorization = 'Bearer ' + ((result as object)?.['token'] as string)
        this.name = (result as object)?.['message'][0]?.['yhmc']
        this.term = (result as object)?.['message'][0]?.['xq']
        if (this.name == '') {
          promptAction.showToast({ message: `登录失败${JSON.stringify(httpRes.result)}` });
          putInfoToUserPreference(this.context,'isLogin',false)
          return false
        } else {
          this.getPersonInfoFromEducationSystem()
          promptAction.showToast({ message: `你好,${this.name}` });

          cacheUIShareData.showLoginSheet = false
          cacheUserShareData.student = this
          putAccountWithPasswordToUserPreference(this.context, this.account, this.password)
          putInfoToUserPreference(this.context,'stuName',this.name)
          putInfoToUserPreference(this.context,'isLogin',true)
          return true
        }
      })
    return false
  }

  getGradeFromEducationSystem() {
    let req = http.createHttp()

    req.request(this.web + '/cj_xh', {
      method: http.RequestMethod.POST,
      header: {
        'Authorization': this.authorization
      },
      extraData: {
        'xh': this.account
      }
    })
      .then((httpRes: http.HttpResponse) => {
        let obj = JSON.parse(JSON.stringify(httpRes))
        let result = JSON.parse((obj as object)?.['result'])
        this.gradeArray=(result as object)?.['message']
        console.log(`FUCK:${JSON.stringify((result as object)?.['message'][1])}`);
        if(this.gradeArray!=undefined)
        {
          console.log(`FUCK:${JSON.stringify(this.gradeArray[0].xm)}`);
        }

      })
  }

  getPersonInfoFromEducationSystem(){
    let req = http.createHttp()

    req.request(this.web + '/xs_xh_jbxx', {
      method: http.RequestMethod.POST,
      header: {
        'Authorization': this.authorization
      },
      extraData: {
        'xh': this.account
      }
    })
      .then((httpRes: http.HttpResponse) => {
        let obj = JSON.parse(JSON.stringify(httpRes))
        let result = JSON.parse((obj as object)?.['result'])
        this.gradeArray=(result as object)?.['message']
        this.stuInfomation=(result as object)?.['message'][0]
        console.log(`FUCK${this.stuInfomation?.bh}`);
        putInfoToUserPreference(this.context,'profession',this.stuInfomation?.zymc as string)
        putInfoToUserPreference(this.context,'academy',this.stuInfomation?.xbmc as string)
        putInfoToUserPreference(this.context,'class',this.stuInfomation?.bj as string)
        putInfoToUserPreference(this.context,'schoolPlace',this.stuInfomation?.bmmc as string)
      })
  }

}

export class cczuClass {
  bh: string = '' //编号
  bj: string = '' //班级
  xh: string = '' //学号
  xm: string = '' //姓名
  kcdm: string = '' //课程代码
  kcmc: string = '' //课程名称
  xq: number = -1 //学期
  kclb: string = '' //课程类别
  lbmc: string = '' //
  xs: number = -1 //学时
  xf: number = -1 //学分
  jsmc: string = '' //教师
  ksxzm: number = -1 //
  ksxz: string = '' //考试形式
  pscj: number = -1 //平时成绩
  qzcj: number = -1 //期中成绩
  qmcj: number = -1 // 期末成绩
  kscj: string = '' //总成绩
  idn: number = -1 //
  cj: number = -1 //成绩
  xfjd: number = -1 //绩点
}

export class stuInfo{
  bh: string=''
  bj: string=''   //班级
  xh: string=''   //学号
  xm: string=''   //姓名
  xb: string=''   //性别
  xjqk: string=''
  csny: string=''
  nj:number=-1  //年纪
  xbdm: string='' //
  zydm: string=''
  xz: string=''
  bmmc: string='' //校区
  shbh: string=''
  zymc: string='' //专业名称
  xbmc: string='' //学院名称
  smscode: string=''  //手机号码

}