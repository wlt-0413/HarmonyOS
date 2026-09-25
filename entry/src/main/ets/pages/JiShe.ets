@Builder
export function JiSheBuilder() {
  JiShe()
}

@Component
struct JiShe {
  @Consume('pathStack') pathStack: NavPathStack

  build() {
    Column({ space: 10 }) {
      Row({ space: 5 }) {
        Text('养殖数量:')
          .fontWeight(700)
          .fontSize(18)
        Text('2300只')
          .fontWeight(700)
          .fontSize(18)
      }
      .width('100%')
      .margin({ left: 5, top: 30 })

      // .border({
      //   width: 1,
      //   color: Color.Red
      // })

      Column({ space: 10 }) {
        Row({ space: 15 }) {
          Text('食槽饲料:')
          Progress({
            value: 55,
            total: 100,
            type: ProgressType.Linear
          })
            .width('60%')
            .color('#0497ff')
            .style({
              strokeWidth: 10,
            })
          Text('530kg')
        }

        Row({ space: 15 }) {
          Text('水槽储水:')
          Progress({
            value: 35,
            total: 100,
            type: ProgressType.Linear
          })
            .width('60%')
            .color('#33cf7c')
            .style({
              strokeWidth: 10,
            })
          Text('130L')
        }
      }
      .padding(10)
      .alignItems(HorizontalAlign.Start)
      .width('100%')


      Row({ space: 8 }) {
        Image($r('app.media.e7'))
          .width(20)
          .margin({ left: 10 })
        Text('32°C')
        Image($r('app.media.e8'))
          .width(20)
          .margin({ left: 15 })
        Text('21%')
        Image($r('app.media.e9'))
          .width(20)
          .margin({ left: 15 })
        Text('300Lux')
      }

      Row() {
        Stack({ alignContent: Alignment.BottomEnd }) {
          Image($r('app.media.e4'))
            .borderRadius(8)
            .width(320)
            .height(120)
            .margin({ left: 18, bottom: 10 })
          // .backgroundColor('#6b5848')
          // .shadow(ShadowStyle.OUTER_DEFAULT_LG)
          Column()
            .width(320)
            .height(120)
            .borderRadius(8)
            .backgroundColor('rgba(0,0,0,0.35)')
            .margin({ bottom: 10 })
          Row() {
            Image($r('app.media.f2'))
              .width(25)
              .height(20)
              .margin({ left: 13 })
          }
          .backgroundColor('#0497ff')
          .width(50)
          .height(40)
          // .padding({bottom:10})
          .margin({ bottom: 10 })
          .borderRadius({ topLeft: 40, bottomRight: 8 })
        }
      }
      .width('100%')

      // .height('100%')
      // .border({
      //   width: 1,
      //   color: Color.Red
      // })

      Row() {
        Text('产量')
          .fontWeight(700)
          .fontSize(18)
      }

      Column() {
        Row() {
          List() {
            ListItem() {
              Column() {
                Stack({ alignContent: Alignment.Center }) {
                  Image($r('app.media.c3'))
                    .borderRadius(5)
                  Column()
                    .width(135)
                    .height(120)
                    .borderRadius(5)
                    .backgroundColor('rgba(0,0,0,0.45)')
                  // .margin({bottom:10})
                  Text('600枚')
                    .fontColor(Color.White)
                }
              }
            }
            .margin({ right: 20 })

            ListItem() {
              Column() {
                Stack({ alignContent: Alignment.Center }) {
                  Image($r('app.media.c3'))
                    .borderRadius(5)
                  Column()
                    .width(135)
                    .height(120)
                    .borderRadius(5)
                    .backgroundColor('rgba(0,0,0,0.45)')
                  Text('520枚')
                    .fontColor(Color.White)
                }
              }
            }
            .margin({ right: 20 })

            ListItem() {
              Column() {
                Stack({ alignContent: Alignment.Center }) {
                  Image($r('app.media.c3'))
                    .borderRadius(5)
                  Column()
                    .width(135)
                    .height(120)
                    .borderRadius(5)
                    .backgroundColor('rgba(0,0,0,0.45)')
                  // .obscured([ObscuredReasons.PLACEHOLDER])
                  Text('600枚')
                    .fontColor(Color.White)
                }
              }
            }
          }
          .scrollBar(BarState.Off)
          .listDirection(Axis.Horizontal)
        }
        .width('100%')
        .height(120)
        // .border({
        //   width: 1,
        //   color: Color.Red
        // })
        .margin({ bottom: 20 })

        Row() {
          Text('鸡舍预警提示')
            .fontWeight(700)
            .fontSize(18)
            .margin({ bottom: 10 })
        }

        Row() {
          Image($r('app.media.e5'))
            .width(20)
          Text('水槽储水量过低，请快速处理...')
            .margin({ left: 10 })
          Image($r('app.media.e6'))
            .width(20)
            .margin({ left: 60 })
            .onClick(() => {
              this.pathStack.pushPathByName('JiControl', null, false)
            })
        }
        // .justifyContent(FlexAlign.SpaceBetween)
        .padding(10)
      }
      .padding(10)
      .width('100%')
      .height('100%')
      .alignItems(HorizontalAlign.Start)
    }
  }
}