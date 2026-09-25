@Builder
export function StartBuilder() {
  Start()
}

@Component
struct Start {
  pathStack: NavPathStack = new NavPathStack()

  build() {
    NavDestination() {
      Button('进入')
        .width(120)
        .fontSize(18)
        .margin({left: 220})
        .backgroundColor('#024b7f')
        .onClick(() => {
          this.pathStack.replacePathByName('Login', null, false)
        })
      Image($r('app.media.ico_1'))
        .width('50%')
        .margin({top: 200})
    }
    .backgroundColor('#0497ff')
    .width('100%')
    .height('100%')
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })

  }
}