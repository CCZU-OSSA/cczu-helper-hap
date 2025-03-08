import { CacheUserShareData } from '../appStorageV2/CacheShareData';
import { AppStorageV2, componentSnapshot, ComposeListItem } from '@kit.ArkUI';
import { cczuClass } from '../classes/cczuStu';
import { image } from '@kit.ImageKit';
import { fileIo as fs } from '@kit.CoreFileKit';
import { systemShare } from '@kit.ShareKit';
import { uniformTypeDescriptor } from '@kit.ArkData';
import { fileUri } from '@kit.CoreFileKit';
import common from '@ohos.app.ability.common';

@Builder
export function inquiryScoreBuilder() {
  inquiryScore()
}


@ComponentV2
export struct scoreList {
  @Param @Once cczuclass: cczuClass | undefined = undefined
  @Local showMoreInfo: boolean = false
  @Local gradeImage: image.PixelMap | undefined = undefined

  @Builder
  gradeContextMenu() {
    Column() {
      List() {
        ComposeListItem({
          contentItem: ({
            primaryText: '分享',
            secondaryText: ''
          }),
          operateItem: ({ text: '' })
        }).onClick(() => {
          componentSnapshot.get('gradePreview', (error: Error, pixmap: image.PixelMap) => {
            if (error) {
              console.log("FUCK: " + JSON.stringify(error))
              return;
            }

            let packer = image.createImagePacker()
            let file = fs.openSync(getContext().cacheDir + '/tmp_share_image.jpg', fs.OpenMode.READ_WRITE | fs.OpenMode.CREATE)

            packer.packToFile(pixmap, file.fd, { format: 'image/jpeg', quality: 100 }).then(() => {
              let data: systemShare.SharedData = new systemShare.SharedData({
                utd: uniformTypeDescriptor.UniformDataType.IMAGE,
                uri: fileUri.getUriFromPath(file.path)
              })

              let controller: systemShare.ShareController = new systemShare.ShareController(data)

              controller.show(getContext() as common.UIAbilityContext, {
                previewMode: systemShare.SharePreviewMode.DETAIL,
                selectionMode: systemShare.SelectionMode.BATCH
              })
              fs.closeSync(file)
            })

          }, { scale: 1, waitUntilRenderFinished: true })

        })

      }

    }.width('150')
  }

  @Builder
  gradePreview() {
    Column() {
      List() {
        ComposeListItem({
          contentItem: ({
            primaryText: this.cczuclass?.kcmc,
            secondaryText: '教师:' + this.cczuclass?.jsmc,
          }),
          operateItem: ({ text: this.cczuclass?.cj.toString() })
        })
        this.moreInfoOfGrade()
      }.scrollBar(BarState.Off)

    }.backgroundColor($r('sys.color.comp_background_list_card'))
    .id('gradePreview')
  }

  @Builder
  moreInfoOfGrade() {
    ComposeListItem({
      contentItem: ({
        primaryText: '平时成绩',

      }),
      operateItem: ({ text: this.cczuclass?.pscj.toString() })
    })

    ComposeListItem({
      contentItem: ({
        primaryText: '期中成绩',

      }),
      operateItem: ({ text: this.cczuclass?.qzcj.toString() })
    })

    ComposeListItem({
      contentItem: ({
        primaryText: '期末成绩',

      }),
      operateItem: ({ text: this.cczuclass?.qmcj.toString() })
    })

    ComposeListItem({
      contentItem: ({
        primaryText: '学分',

      }),
      operateItem: ({ text: this.cczuclass?.xf.toString() })
    })

    ComposeListItem({
      contentItem: ({
        primaryText: '绩点',

      }),
      operateItem: ({ text: this.cczuclass?.xfjd.toString() })
    })
  }

  build() {
    ListItemGroup() {
      ComposeListItem({
        contentItem: ({
          primaryText: this.cczuclass?.kcmc,
          secondaryText: '教师:' + this.cczuclass?.jsmc,
        }),
        operateItem: ({ text: this.cczuclass?.cj?.toString() })
      })

      if (this.showMoreInfo) {
        this.moreInfoOfGrade()
      }
    }.onClick(() => {
      animateTo({ curve: Curve.EaseInOut, duration: 200 }, () => {
        this.showMoreInfo = !this.showMoreInfo
      })
    }).bindContextMenu(this.gradeContextMenu(), ResponseType.LongPress, { preview: this.gradePreview() })

  }
}


@ComponentV2
export struct inquiryScore {
  pageInfos: NavPathStack = new NavPathStack()
  @Local cacheUserShareData: CacheUserShareData =
    AppStorageV2.connect(CacheUserShareData, () => new CacheUserShareData())!

  build() {
    NavDestination() {

      List() {
        if (this.cacheUserShareData.student != undefined) {
          ForEach(this.cacheUserShareData.student.gradeArray, (item: cczuClass) => {
            scoreList({ cczuclass: item })
          },(item:cczuClass)=>item.kcmc)
        }
      }
      .backgroundColor($r('sys.color.comp_background_list_card'))
      .width('90%')
      .borderRadius(20)
      .scrollBar(BarState.Off)
      .divider({
        strokeWidth: 0.5,
        color: $r('sys.color.comp_divider'),
        startMargin: 20,
        endMargin: 20
      })

    }.backgroundColor($r('sys.color.comp_background_gray'))
    .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
    })
  }
}