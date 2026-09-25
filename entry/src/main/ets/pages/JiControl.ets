@Builder
export function JiControlBuilder() {
  JiControl()
}

@Component
struct JiControl {
  pathStack: NavPathStack = new NavPathStack()

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
          Text('鸡舍操作台')
            .margin({ left: 110 })
            .fontColor(Color.White)
            .fontSize(18)
        }
        .height(50)
        .width('100%')
        .padding({ left: 10 })
        .backgroundColor('#0497ff')

        Row() {
          Image($r('app.media.g2'))
            .borderRadius(10)
        }
        .width('100%')
        .height(120)
        .padding(10)

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
          Image($r('app.media.e6'))
            .width(20)
            .margin({ left: 80 })
            .onClick(() => {
              this.pathStack.pushPathByName('HenMent',null,false)
            })
        }
        .width('100%')
        .padding(5)

        Column({ space: 10 }) {
          Row({ space: 10 }) {
            Text('添加饲料')
            Progress({
              value: 60,
              total: 100,
              type: ProgressType.Linear
            })
              .width('55%')
              .color('#0497ff')
              .style({
                strokeWidth: 10,
              })
            Button('加满')
              .width(80)
              .height(30)
              .backgroundColor('#0497ff')
          }
          .width('100%')

          Row({ space: 10 }) {
            Text('添加储水')
            Progress({
              value: 30,
              total: 100,
              type: ProgressType.Linear
            })
              .width('55%')
              .color('#33cf7c')
              .style({
                strokeWidth: 10,
              })
            Button('加满')
              .width(80)
              .height(30)
              .backgroundColor('#33cf7c')
          }
          .width('100%')
        }
        .padding(10)
        .width('100%')

        Row() {
          Text('设备操作台')
            .fontWeight(700)
            .fontSize(18)
        }
        .padding(10)
        .width('100%')

        Row() {
          Row({ space: 20 }) {
            Column() {
              Text('排风开启')
                .fontColor(Color.White)
                .margin({ left: 25, top: 10, bottom: 18 })
              Image($r('app.media.g3'))
                .margin({ top: 20 })
                .width(100)
            }
            .height(190)
            .width('100%')

            Row() {
              Column({ space: 20 }) {
                Row({ space: 10 }) {
                  Image($r('app.media.g5'))
                    .width(30)
                  Text('关灯')
                  Image($r('app.media.g6'))
                    .width(90)
                }
                .shadow(ShadowStyle.OUTER_DEFAULT_SM)
                .height(60)
                .borderRadius(10)
                .backgroundColor(Color.White)
                .padding(5)
                .width(200)

                Row({ space: 20 }) {
                  Row() {
                    Column() {
                      Image($r('app.media.g4'))
                        .width(35)
                        .margin({ top: 20, bottom: 20 })
                      Text('加热开启')
                        .fontColor(Color.White)
                    }
                    .height(110)
                    .width(90)
                  }
                  .backgroundColor('#0497ff')
                  .borderRadius(10)
                  .height(110)
                  .width(90)

                  Row() {
                    Column() {
                      Image($r('app.media.e8'))
                        .width(35)
                        .margin({ top: 20, bottom: 20 })
                      Text('保湿开启')
                        .fontColor(Color.White)
                    }
                    .height(110)
                    .width(90)
                  }
                  .backgroundColor('#0497ff')
                  .borderRadius(10)
                  .height(110)
                  .width(90)

                }
                .width(200)
              }

              .height(190)
              .width(200)
            }
            .height(190)
            .width(200)
          }
          .borderRadius(10)
          .backgroundColor('#0497ff')
          .height(190)
          .width(140)
        }
        .padding(10)
        .height(200)
        .width('100%')

        Row() {
          Text('孵化器')
            .fontWeight(700)
            .fontSize(18)
        }
        .padding(10)
        .width('100%')

        Row() {
          Stack() {
            Image($r('app.media.f1'))
              .width('100%')
              .borderRadius(10)
              .height(120)
            Column()
              .width('100%')
              .height(120)
              .borderRadius(10)
              .backgroundColor('rgba(0,0,0,0.35)')
            Row() {
              Row({ space: 5 }) {
                Image($r('app.media.e7'))
                  .width(20)
                Text('36°C')
              }

              Row({ space: 5 }) {
                Image($r('app.media.e8'))
                  .width(20)
                Text('50%')
              }

              Row({ space: 5 }) {
                Image($r('app.media.e9'))
                  .width(20)
                Text('270Lux')
              }
            }
            .margin({
              bottom: 20
            })
            .height('100%')
            .alignItems(VerticalAlign.Bottom)
            .justifyContent(FlexAlign.SpaceAround)
            .width('100%')
          }
        }
        .padding(15)
        .height(150)
        .width('100%')
      }
      .width('100%')
    }
    .hideTitleBar(true)
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}