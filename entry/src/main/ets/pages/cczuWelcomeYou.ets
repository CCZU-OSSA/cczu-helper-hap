import { LengthUnit } from "@kit.ArkUI"

@Builder
export function cczuWelcomeYouBuilder()
{
  cczuWelcomeYou()
}

@ComponentV2
export struct cczuWelcomeYou{

  pageInfos: NavPathStack = new NavPathStack()

  build() {
    NavDestination(){
      Column(){
        Image($r('app.media.cczu_logo')).width('150')
        Text("  你说的对，但是《常州大学》是由中国教育部批准成立的一所全日制本科高校。" +
          "学校坐落于被称作“江南明珠”的江苏省常州市，" +
          "在这里，被知识选中的人将被授予「录取通知书」，导引学术之力。" +
          "你将扮演一位名为「常大新生」的探索者，" +
          "在开放的校园中邂逅微电子、石油化工、材料科学、环境工程等领域的硬核学科，" +
          "和它们一起攻克国家级科研项目，解锁国家科技进步奖——同时，" +
          "逐步发掘的「常大」湖光山色与「责任」校训背后的精神宇宙。")
          .margin({top:40})
          .letterSpacing(5)
          .lineSpacing({value:4,unit:LengthUnit.VP})
          .animation({curve:Curve.Ease,duration:800})
      }.width('90%')
      .height('100%')
      .margin({top:100})
    }
    .backgroundColor($r('sys.color.comp_background_gray'))
    .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
    })

    .height('100%')
    .width('100%')

  }

}
