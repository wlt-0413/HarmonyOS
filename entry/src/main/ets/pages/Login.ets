import { promptAction } from "@kit.ArkUI"

@Builder
export function LoginBuilder() {
  Login()
}

@Component
struct Login {
  @State account: string = ''
  @State password: string = ''
  @State isAccountError: boolean = false
  @State isPasswordError: boolean = false
  private accountRegex: RegExp = /^[a-zA-Z0-9_-]{4,16}$/;
  private passwordRegex: RegExp = /^\d{6}$/;
  pathStack: NavPathStack = new NavPathStack()

  build() {
    NavDestination() {
      Column() {
        Stack({ alignContent: Alignment.TopStart }) {
          Image($r('app.media.b1'))
            .width('100%')
            .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
          Column({ space: 20 }) {
            Text('账号')
              .fontWeight(700)
              .width('100%')
            TextInput({ placeholder: '请输入账号...', text: this.account })
              .width('100%')
              .backgroundColor('#ffffff')
              .border({ width: { bottom: 1 }, color: '#efefef' })
              .showError(this.isAccountError ? '请输入正确格式的账号' : undefined)
              .onChange((value: string) => {
                this.account = value
              })
              .onBlur(() => {
                this.isAccountError = !this.accountRegex.test(this.account)
              })
            Text('密码')
              .fontWeight(700)
              .width('100%')
            TextInput({ placeholder: '请输入密码...', text: this.password })
              .type(InputType.Password)
              .backgroundColor('#ffffff')
              .border({ width: { bottom: 1 }, color: '#efefef' })
              .width('100%')
              .showError(this.isPasswordError ? '请输入正确格式的密码' : undefined)
              .onChange((value: string) => {
                this.password = value
              })
              .onBlur(() => {
                this.isPasswordError = !this.passwordRegex.test(this.password)
              })
            Button('工作员登录')
              .width(350)
              .backgroundColor('#0497ff')
              .onClick(() => {
                this.login()
              })

            Button('游客直接进入')
              .width(350)
              .backgroundColor('#33cf7c')
              .onClick(() => {
                this.pathStack.replacePathByName('Layout', null, false)
              })
          }
          .padding(10)
          .margin({ top: 115 })
          .borderRadius({ topRight: 90 })
          .width('100%')
          .layoutWeight(1)
          .backgroundColor(Color.White)
        }
        .width('100%')
      }
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }

  login() {
    this.isAccountError = !this.accountRegex.test(this.account)
    this.isPasswordError = !this.passwordRegex.test(this.password)
    if (!this.isAccountError && !this.isPasswordError) {
      if (this.account === 'admin' && this.password === '123456') {
        promptAction.showToast({
          message: '登录成功',
          duration: 2000
        })
        this.pathStack.replacePathByName('Work', null, false)
        this.isAccountError = false
        this.isPasswordError =false
      } else {
        promptAction.showToast({
          message: '登录失败',
          duration: 2000
        })
        this.account = '';
        this.password = '';
        this.isAccountError = true
        this.isPasswordError = true
      }
    } else {
      promptAction.showToast({
        message: '请检查账号或者密码是否正确',
        duration: 2000
      })
    }
  }
}