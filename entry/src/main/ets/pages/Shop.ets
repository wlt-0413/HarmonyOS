// @Entry
@Component
export struct Shop {
  @Consume('pathStack') pathStack: NavPathStack
  @State selectedCategory: number = 0
  eggChickenList: Resource[] = [
    $r('app.media.c3')
  ]
  //土鸭蛋图片数组
  eggDuckList: Resource[] = [
    $r('app.media.b2')
  ]
  //鸡鸭肉图片数组
  meatList: Resource[] = [
    $r('app.media.c1'),
    $r('app.media.c2')
  ]

  //获取当前选中分类对应的图片列表
  get currentImgList(): Resource[] {
    switch (this.selectedCategory) {
      case 0:
        return this.eggChickenList
      case 1:
        return this.eggDuckList
      case 2:
        return this.meatList
      default:
        return []
    }
  }

  //二级胶囊标签按钮构造器
  @Builder
  CategoryBtn(title: string, index: number) {
    Button(title)
      .backgroundColor('#ececec')
      .fontColor(this.selectedCategory === index ? '#007aff' : '#666666')
      .borderRadius(24)
      .shadow({ radius: 8, color: '#00000015' })
      .onClick(() => {
        this.selectedCategory = index
      })
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Image($r('app.media.b1'))
          .width('100%')
          .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
        Column() {
          Row({ space: 15 }) {
            this.CategoryBtn("土鸡蛋", 0)
            this.CategoryBtn("土鸭蛋", 1)
            this.CategoryBtn("鸡鸭肉", 2)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceAround)

          if (this.selectedCategory === 0) {
            Grid() {
              GridItem() {
                Image($r('app.media.c3'))
                  .width('80%')
                  .onClick(() => {
                    this.pathStack.pushPathByName('Project', null, false)
                  })
              }

              GridItem() {
                Image($r('app.media.c3'))
                  .width('80%')
                  .onClick(() => {
                    this.pathStack.pushPathByName('Project', null, false)
                  })
              }

              GridItem() {
                Image($r('app.media.c3'))
                  .width('80%')
                  .onClick(() => {
                    this.pathStack.pushPathByName('Project', null, false)
                  })
              }

              GridItem() {
                Image($r('app.media.c3'))
                  .width('80%')
                  .onClick(() => {
                    this.pathStack.pushPathByName('Project', null, false)
                  })
              }

              GridItem() {
                Image($r('app.media.c3'))
                  .width('80%')
                  .onClick(() => {
                    this.pathStack.pushPathByName('Project', null, false)
                  })
              }
            }
            .margin({ top: 25 })
            .columnsGap(10)
            .rowsGap(20)
            .width('100%')
            .columnsTemplate('1fr 1fr')
          } else if (this.selectedCategory === 1) {
            Grid() {
              GridItem() {
                Image($r('app.media.b2'))
                  .width('80%')
                  .borderRadius(20)
              }

              GridItem() {
                Image($r('app.media.b2'))
                  .width('80%')
                  .borderRadius(20)
              }

              GridItem() {
                Image($r('app.media.b2'))
                  .width('80%')
                  .borderRadius(20)
              }
            }
            .margin({ top: 25 })
            .columnsGap(20)
            .rowsGap(20)
            .width('100%')
            .columnsTemplate('1fr 1fr')

          } else if (this.selectedCategory === 2) {
            Grid() {
              GridItem() {
                Image($r('app.media.c1'))
                  .width('60%')
                  .borderRadius(20)
              }

              GridItem() {
                Image($r('app.media.c2'))
                  .width('80%')
                  .borderRadius(20)
              }

            }
            .margin({ top: 25 })
            .columnsGap(20)
            .rowsGap(20)
            .width('100%')
            .columnsTemplate('1fr 1fr')

          }

          // .width('100%')
          // .border({
          //   width: 1,
          //   color: Color.Gray
          // })

        }
        .margin({ top: 120 })
        // .alignItems(HorizontalAlign.Start)
        .borderRadius({ topLeft: 80 })
        .padding({
          top: 10,
          left: 15,
          bottom: 10,
          right: 5
        })
        .backgroundColor(Color.White)
        .width('100%')

        // .layoutWeight(1)
      }
      .width('100%')
    }
    .height('100%')
    .width('100%')

    // .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
  }
}