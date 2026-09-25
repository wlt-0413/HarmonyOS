@Component
export struct Home {
  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Image($r('app.media.b1'))
          .width('100%')
          .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
        Column({ space: 20 }) {
          Text('智能养殖场')
            .width('100%')
            .fontWeight(FontWeight.Bold)
          Text('你好新一代信息技术深度融合与产业化升级的背景下，以 "智慧养殖" 为特征的现代畜牧业建设正快速推进。智慧养殖综合物联网、人工智能与大数据等智能化技术，使养殖系统具备环境、学习生长规律、自主决策与精准调控的能力，从而实现对畜禽合理管控环节的智能化。在此背景下，基于鸿蒙分布式能力与场协同优势，开发一款专注于分布式养殖环监测与精准调控的智能应用程序，为养殖户打造高效、便捷、可靠的智能管理体验。')
            .width('100%')
            .lineHeight(25)
            .fontColor('#9e9e9e')
          Image($r('app.media.b2'))
            .width('90%')
            .height(250)
            .borderRadius(20)
            .margin({ bottom: 50, left: 20 })
        }
        .margin({ top: 120 })
        .alignItems(HorizontalAlign.Start)
        .borderRadius({ topRight: 90 })
        .padding(10)
        .backgroundColor(Color.White)
        .width('100%')
        .layoutWeight(1)
      }

    }
    .width('100%')

    // .backgroundColor(Color.White)
  }
}