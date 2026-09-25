@Entry
@Component
struct Index {
  pathStack: NavPathStack = new NavPathStack()
  build() {
    Navigation(this.pathStack) {
    }.onAppear(() => {
      this.pathStack.replacePathByName('Start', null, false)
    })
    .hideTitleBar(true)
    .hideNavBar(true)
  }
}