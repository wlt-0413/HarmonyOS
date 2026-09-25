import { JiSheBuilder } from "./JiShe"
import { YaSheBuilder } from "./YaShe"

@Builder
export function WorkBuilder() {
  Work()
}

interface TabClass {
  text: string
  icon: ResourceStr
}

@Component
struct Work {
  @Provide('pathStack') pathStack: NavPathStack = new NavPathStack()
  @State selectCat: number = 0
  tabTitles: TabClass [] = [
    { text: '鸡舍', icon: $r('app.media.e1') },
    { text: '鸭舍', icon: $r('app.media.e3') }
  ]

  @Builder
  TabBuilder(item: TabClass, index: number) {
    Row() {
      Row({ space: 5 }) {
        Image(item.icon)
          .width(20)
          .fillColor(this.selectCat === index ? '#0497ff' : '#dbdbdb')
        Text(item.text)
          .fontColor(this.selectCat === index ? '#0497ff' : '#dbdbdb')
      }
      .justifyContent(FlexAlign.Center)
      .shadow({radius: 20,color:Color.Gray,offsetX:1,offsetY:1})
      .borderRadius('50%')
      .width(110)
      .height(30)
    }
    .padding({ right: 30 })
  }

  build() {
    NavDestination() {
      Column() {
        Tabs() {
          ForEach(this.tabTitles, (item: TabClass, index: number) => {
            TabContent() {
              if (this.selectCat === 0) {
                JiSheBuilder()
              }else if (this.selectCat === 1){
                YaSheBuilder()
              }

            }
            // .border({
            //   width:1,
            //   color:Color.Red
            // })
            .tabBar(this.TabBuilder(item, index))
          })
        }
        .barMode(BarMode.Scrollable)
        .barHeight(40)
        .onChange((index: number) => {
          this.selectCat = index
        })
        // .border({
        //   width: 3,
        //   color: Color.Red
        // })
        .scrollable(false)
        .animationDuration(0)
      }
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}