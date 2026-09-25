import { promptAction } from "@kit.ArkUI"

@Builder
export function ProjectBuilder() {
  Project()
}


@Component
struct Project {
  pathStack: NavPathStack = new NavPathStack()
  @State TuShow: boolean = false

  build() {
    NavDestination() {
      Stack() {
        Column() {
          Column() {
            Row() {
              Image($r('app.media.h'))
                .width(30)
                .margin({ left: 10 })
                .onClick(() => {
                  this.pathStack.pop()
                })
              Text('产品介绍')
                .fontColor(Color.White)
                .width('100%')
                .margin({ left: '30%' })
            }
            // .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
            .height(40)
            .backgroundColor('#0497ff')
            .width('100%')

            Column({ space: 15 }) {
              Row() {
                Image($r('app.media.b2'))
                  .width('100%')
                  .height(200)
              }

              Column({ space: 10 }) {
                Text('散养土鸡蛋')
                  .width('100%')
                  .fontSize(18)
                  .fontWeight(700)
                Text('这是一些一些散养土鸡蛋，营养价值高。这是一些一些散养土鸡蛋，营养价值高。这是一些一些散养土鸡蛋，营养价值高。这是一些一些散养土鸡蛋，营养价值高。这是一些一些散养土鸡蛋，营养价值高。这是一些一些散养土鸡蛋，营养价值高。')
                  .width('100%')
                  .fontColor(Color.Gray)
              }
              .padding(10)
              .width('100%')
              .layoutWeight(1)

              Row() {
                Row() {
                  Image($r('app.media.d1'))
                    .width(30)
                    .margin({ right: 10, left: 10 })
                  Button('点击添加微信', { buttonStyle: ButtonStyleMode.TEXTUAL, role: ButtonRole.ERROR })
                    .fontColor(Color.White)
                    .onClick(() => {
                      this.TuShow = true
                    })
                }
                .width('50%')
                .height('80%')
                .backgroundColor(Color.Blue)

                Row() {
                  Image($r('app.media.d2'))
                    .width(30)
                    .margin({ right: 10, left: 10 })
                  Button('880-820-8820', { buttonStyle: ButtonStyleMode.TEXTUAL, role: ButtonRole.ERROR })
                    .fontColor(Color.White)
                    .onClick(()=>{
                      // promptAction.showToast()
                      this.getUIContext().showAlertDialog({
                        message: '拨打成功'
                      })
                    })
                }
                .width('50%')
                .height('80%')
                .backgroundColor(Color.Green)
              }
              // .margin(20)
              .width('100%')
              .height(80)

              // .layoutWeight(1)
              // .border({width:1,color:Color.Red})
              // .alignItems(VerticalAlign.Bottom)
              // .justifyContent(FlexAlign.SpaceBetween)
            }
            .width('100%')
          }
          .width('100%')
        }
        .width('100%')

        Column() {
          if (this.TuShow) {
            Column() {
              Column() {
                Image($r('app.media.ico_wx'))
                  .width(300)

              }
            }
            .width('100%')
            .onClick(() => {
              this.TuShow = false
            })
            .justifyContent(FlexAlign.Center)
            .backgroundColor('#88000000')
            .height('100%')

          }
        }
      }
      .width('100%')
    }
    .hideTitleBar(true)
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}