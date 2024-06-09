import { SpinKit } from '../components/SpinKit'
import { DialogConfig, DialogGlobalConfig } from './DialogConfig'


let loadingDialogController: CustomDialogController | null
let dialogGlobalConfig: DialogGlobalConfig = new DialogGlobalConfig() //默认配置


@Component
export struct SpinKitComponent {
  /**
   * 设置全局统一样式
   * @param configs
   */
  setGlobalConfig(configs: (config: DialogGlobalConfig) => void): void {
    configs(dialogGlobalConfig)
  }

  /**
   * 显示弹框
   */
  showLoading(dialogConfig?: DialogConfig): void {
    this.hide()
    loadingDialogController = new CustomDialogController({
      builder: DialogView({ dialogConfig: dialogConfig }),
      alignment: DialogAlignment.Center,
      offset: { dx: 0, dy: 0 },
      autoCancel: dialogConfig?.autoCancel ?? dialogGlobalConfig.autoCancel,
      customStyle: true,
      maskColor: dialogConfig?.maskColor ?? dialogGlobalConfig.maskColor,
    })
    loadingDialogController?.open()
  }

  /**
   * 隐藏弹框
   */
  hide(): void {
    if (loadingDialogController) {
      loadingDialogController?.close()
      loadingDialogController = null
    }
  }

  build() {}
}


@CustomDialog
struct DialogView {
  controller: CustomDialogController
  @State content: string = ''
  @State dialogConfig: DialogConfig = dialogGlobalConfig;

  aboutToAppear(): void {
    this.content = this.dialogConfig.content ?? dialogGlobalConfig.content;
  }

  build() {
    Column() {
      SpinKit({
        spinType: this.dialogConfig.spinType ?? dialogGlobalConfig.spinType,
        spinSize: this.dialogConfig.spinSize ?? dialogGlobalConfig.spinSize,
        spinColor: this.dialogConfig.spinColor ?? dialogGlobalConfig.spinColor
      })
      if (this.content && this.content.length > 0) {
        Text(this.content)
          .textAlign(TextAlign.Center)
          .margin({
            top:this.dialogConfig?.marginTop ?? dialogGlobalConfig.marginTop
          })
          .fontSize(this.dialogConfig?.fontSize ?? dialogGlobalConfig.fontSize)
          .fontColor(this.dialogConfig?.fontColor ?? dialogGlobalConfig.fontColor)
      }
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .margin(12)
    .constraintSize({ minWidth: 100, minHeight: 100 })
    .padding(this.dialogConfig?.padding ?? dialogGlobalConfig.padding)
    .backgroundColor(this.dialogConfig?.backgroundColor ?? dialogGlobalConfig.backgroundColor)
    .borderRadius(this.dialogConfig?.borderRadius ?? dialogGlobalConfig.borderRadius)
  }
}