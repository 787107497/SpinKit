import router from '@ohos.router';
import SpinKitDialog, { SpinType } from '@pura/spinkit/Index';


@Entry
@Component
struct Index {
  private scroller: Scroller = new Scroller();

  aboutToAppear(): void {
    SpinKitDialog.setGlobalConfig((config) => {
      config.spinType = SpinType.spinD
      config.spinSize = 60
      config.spinColor = '#0A66F9'
      config.backgroundColor = '#99000000'
      config.borderRadius = 10
      config.maskColor = '#11000000'
      config.autoCancel = false
    })
  }

  build() {
    Column() {
      Text($r('app.string.app_name'))
        .height(50)
        .width('100%')
        .backgroundColor(Color.White)
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Bold)
        .fontSize(24)
      Divider()
      Scroll(this.scroller) {
        Column({ space: 15 }) {
          Button('SpinKit')
            .width('100%')
            .margin({ top: 15 })
            .onClick(() => {
              router.pushUrl({ url: 'pages/SpinKit1' })
            })
          Button('SpinKit')
            .width('100%')
            .onClick(() => {
              router.pushUrl({ url: 'pages/SpinKit2' })
            })
          Button('加载框，样式一')
            .width('100%')
            .onClick(() => {
              SpinKitDialog.showLoading()
              setTimeout(() => {
                SpinKitDialog.hide()
              }, 15000)
            })
          Button('加载框，样式二')
            .width('100%')
            .onClick(() => {
              SpinKitDialog.showLoading({
                spinType: SpinType.spinK,
              })
              setTimeout(() => {
                SpinKitDialog.hide()
              }, 10000)
            })
          Button('加载框，样式三')
            .width('100%')
            .onClick(() => {
              SpinKitDialog.showLoading({
                spinType: SpinType.spinH,
                spinColor: '#0A66F9',
                spinSize: 60,
                backgroundColor: '#CC000000',
                maskColor: Color.Transparent
              })
            })
          Button('加载框，样式四')
            .width('100%')
            .onClick(() => {
              SpinKitDialog.showLoading({
                spinType: SpinType.spinB,
                spinColor: Color.White,
                autoCancel: true
              })
            })
          Button('加载框，样式五')
            .width('100%')
            .onClick(() => {
              SpinKitDialog.showLoading({
                spinType: SpinType.spinP,
                spinColor: Color.White,
                spinSize: 70,
                content: '加载中...',
                fontSize: 18,
                fontColor: Color.White,
                backgroundColor: '#AA000000',
                maskColor: Color.Transparent,
                padding: {
                  top: 30,
                  right: 50,
                  bottom: 30,
                  left: 50
                },
                marginTop: 20,
                autoCancel: true
              })
            })
        }
        .padding({ left: 15, right: 15 })
        .width('100%')
        .height('100%')
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}