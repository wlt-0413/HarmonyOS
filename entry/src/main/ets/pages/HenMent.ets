@Builder
export function HenMentBuilder() {
  HenMent()
}


@Entry
@Component
struct HenMent {
  pathStack: NavPathStack = new NavPathStack()
  @State Num1: number = 20
  @State Num2: number = 38
  @State Num3: number = 20
  @State Num4: number = 38
  @State Num5: number = 20
  @State Num6: number = 38

  build() {
    NavDestination() {
      Column() {
        Row() {
          Image($r('app.media.g1'))
            .width(30)
            .height(30)
            .onClick(() => {
              this.pathStack.pop()
            })
          Text('鸡舍环境阀值设置')
            .margin({ left: 90 })
            .fontSize(18)
            .fontColor(Color.White)
        }
        .padding({ left: 10 })
        .backgroundColor('#0497ff')
        .height(50)
        .width('100%')
        Column() {
          Row() {
            Column({ space: 10 }) {
              Row({ space: 15 }) {
                Image($r('app.media.h1'))
                  .width(30)
                Text('温度阀值设置')
                Text('°C')
                  .fontSize(18)
                  .margin({ left: 130 })
              }
              .alignItems(VerticalAlign.Bottom)
              .width('100%')

              Divider().color(Color.Black).strokeWidth(1).margin({ bottom: 10 })

              Column({ space: 8 }) {
                Row() {
                  Text('最大值')
                    .margin({ left: 40 })
                  Row() {
                    Text('-')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num1--
                      })
                    Text(this.Num1.toString())
                      .fontSize(18)
                    Text('+')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num1++
                      })
                  }
                  .justifyContent(FlexAlign.SpaceAround)
                  .border({
                    width: 1,
                    color: '#0497ff'
                  })
                  .borderRadius(18)
                  .height(36)
                  .width(120)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')

                Row() {
                  Text('最小值')
                    .margin({ left: 40 })
                  Row() {
                    Text('-')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num2--
                      })
                    Text(this.Num2.toString())
                      .fontSize(18)
                    Text('+')
                      .onClick(() => {
                        this.Num2++
                      })
                      .fontSize(18)
                  }
                  .justifyContent(FlexAlign.SpaceAround)
                  .borderRadius(18)
                  .height(36)
                  .border({ width: 1, color: '#0497ff' })
                  .width(120)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            }
            .width('100%')
          }
          .borderRadius(15)
          .padding(10)
          .shadow(ShadowStyle.OUTER_DEFAULT_MD)
          .height(160)
          .width('100%')
        }
        .padding(15)
        .width('100%')
        Column() {
          Row() {
            Column({ space: 10 }) {
              Row({ space: 15 }) {
                Image($r('app.media.h2'))
                  .width(30)
                Text('湿度阀值设置')
                Text('%')
                  .fontSize(18)
                  .margin({ left: 130 })
              }
              .alignItems(VerticalAlign.Bottom)
              .width('100%')

              Divider().color(Color.Black).strokeWidth(1).margin({ bottom: 10 })

              Column({ space: 8 }) {
                Row() {
                  Text('最大值')
                    .margin({ left: 40 })
                  Row() {
                    Text('-')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num3--
                      })
                    Text(this.Num3.toString())
                      .fontSize(18)
                    Text('+')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num3++
                      })
                  }
                  .justifyContent(FlexAlign.SpaceAround)
                  .border({
                    width: 1,
                    color: '#0497ff'
                  })
                  .borderRadius(18)
                  .height(36)
                  .width(120)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')

                Row() {
                  Text('最小值')
                    .margin({ left: 40 })
                  Row() {
                    Text('-')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num4--
                      })
                    Text(this.Num4.toString())
                      .fontSize(18)
                    Text('+')
                      .onClick(() => {
                        this.Num4++
                      })
                      .fontSize(18)
                  }
                  .justifyContent(FlexAlign.SpaceAround)
                  .borderRadius(18)
                  .height(36)
                  .border({ width: 1, color: '#0497ff' })
                  .width(120)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            }
            .width('100%')
          }
          .borderRadius(15)
          .padding(10)
          .shadow(ShadowStyle.OUTER_DEFAULT_MD)
          .height(160)
          .width('100%')
        }
        .padding(15)
        .width('100%')
        Column() {
          Row() {
            Column({ space: 10 }) {
              Row({ space: 15 }) {
                Image($r('app.media.e9'))
                  .width(30)
                Text('关照阀值设置')
                Text('Lux')
                  .fontSize(18)
                  .margin({ left: 120 })
              }
              .alignItems(VerticalAlign.Bottom)
              .width('100%')

              Divider().color(Color.Black).strokeWidth(1).margin({ bottom: 10 })

              Column({ space: 8 }) {
                Row() {
                  Text('最大值')
                    .margin({ left: 40 })
                  Row() {
                    Text('-')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num5--
                      })
                    Text(this.Num5.toString())
                      .fontSize(18)
                    Text('+')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num5++
                      })
                  }
                  .justifyContent(FlexAlign.SpaceAround)
                  .border({
                    width: 1,
                    color: '#0497ff'
                  })
                  .borderRadius(18)
                  .height(36)
                  .width(120)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')

                Row() {
                  Text('最小值')
                    .margin({ left: 40 })
                  Row() {
                    Text('-')
                      .fontSize(18)
                      .onClick(() => {
                        this.Num6--
                      })
                    Text(this.Num6.toString())
                      .fontSize(18)
                    Text('+')
                      .onClick(() => {
                        this.Num6++
                      })
                      .fontSize(18)
                  }
                  .justifyContent(FlexAlign.SpaceAround)
                  .borderRadius(18)
                  .height(36)
                  .border({ width: 1, color: '#0497ff' })
                  .width(120)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            }
            .width('100%')
          }
          .borderRadius(15)
          .padding(10)
          .shadow(ShadowStyle.OUTER_DEFAULT_MD)
          .height(160)
          .width('100%')
        }
        .padding(15)
        .width('100%')
      }
      .width('100%')
      .height('100%')
    }
    .hideTitleBar(true)
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}