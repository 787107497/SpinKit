import { SpinType } from './SpinType'

//弹框配置
export interface DialogConfig {
  spinType: SpinType //动画类型
  content?: string //提示文字
  spinSize?: number //加载动画和Tip图标大小
  spinColor?: ResourceColor //加载动画和Tip图标的颜色
  fontSize?: number | string | Resource //文字大小
  fontColor?: ResourceColor //文字颜色
  marginTop?: number | string | Resource //文字与动画的间距
  padding?: Padding | Length //padding
  backgroundColor?: ResourceColor //背景颜色,建议八位色值前两位为透明度
  borderRadius?: Length | BorderRadiuses //背景圆角
  maskColor?: ResourceColor //Dialog蒙版颜色
  autoCancel?: boolean //是否允许点击遮障层退出，true表示关闭弹窗。false表示不关闭弹窗。
}


export class DialogGlobalConfig {
  spinType: SpinType = SpinType.spinZ //动画类型
  spinSize: number = 60 //加载动画和Tip图标大小
  spinColor: ResourceColor = Color.White //加载动画和Tip图标的颜色
  content: string = '' //提示文字
  fontSize: number | string | Resource = 16 //文字大小
  fontColor: ResourceColor = Color.White //文字颜色
  marginTop: number | string | Resource = 20 //文字与动画的间距
  padding: Padding | Length = 30 //padding
  backgroundColor: ResourceColor = '#99000000' //背景颜色，建议八位色值前两位为透明度
  borderRadius: Length | BorderRadiuses = 10 //背景圆角
  maskColor: ResourceColor = Color.Transparent //Dialog蒙版颜色，默认Color.Transparent
  autoCancel: boolean = false //是否允许点击遮障层退出，true表示关闭弹窗。false表示不关闭弹窗。
}