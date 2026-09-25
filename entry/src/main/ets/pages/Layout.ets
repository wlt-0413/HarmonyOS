import { Home } from "./Home"
import { Shop } from "./Shop"

interface TabClass {
  text: string
  icon: ResourceStr
}

@Builder
export function LayoutBuilder() {
  Layout()
}
@Entry
@Component
struct Layout {
  @Provide('pathStack') pathStack: NavPathStack = new NavPathStack()
  @State currentIndex: number = 0
  tabData: TabClass[] = [
    {text: '首页',icon: $r('app.media.b3')},
    {text: '产品页',icon: $r('app.media.b6')}
  ]

  @Builder tabBuilder (item: TabClass, index: number) {
    Column() {
      Image(item.icon)
        .width(35)
        .margin({bottom: 5})
        .fillColor(this.currentIndex === index ? '#0597ff' : '#3c3c3c')
      Text(item.text)
        .fontSize(14)
        .fontColor(this.currentIndex === index ? '#0597ff' : '#3c3c3c')
    }
  }

  build() {
    NavDestination() {
      Tabs({barPosition: BarPosition.End}) {
        ForEach(this.tabData, (item: TabClass, index: number) => {
          TabContent() {
            if (this.currentIndex ===0) {
              Home()
            } else if (this.currentIndex ===1) {
              Shop()
            }
          }
          .tabBar(this.tabBuilder(item, index))
          // .backgroundColor(Color.Pink)
          .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP,SafeAreaEdge.BOTTOM])
        })
      }
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .scrollable(false)
      .animationDuration(0)
      .width('100%')
      // .barBackgroundColor(Color.Pink)
      .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP,SafeAreaEdge.BOTTOM])
    }
    // .title('布局页')
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}