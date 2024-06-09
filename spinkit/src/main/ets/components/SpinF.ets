@Component
export struct SpinF {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State scale1: number = 0;
  @State scale2: number = 1;
  @State angle1: number = 0;

  build() {
    RelativeContainer() {
      Canvas()
        .alignRules({
          top: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Center },
        })
        .scale({ x: this.scale1, y: this.scale1 })
        .bounceStyle()
      Canvas()
        .alignRules({
          bottom: { anchor: '__container__', align: VerticalAlign.Bottom },
          middle: { anchor: '__container__', align: HorizontalAlign.Center },
        })
        .scale({ x: this.scale2, y: this.scale2 })
        .bounceStyle()
    }
    .width(this.spinSize)
    .height(this.spinSize)
    .rotate({ angle: this.angle1 })
    .onAppear(() => {
      let keyframes1: Array<KeyframeState> = [
        {
          duration: 1000,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale1 = 1;
            this.scale2 = 0;
          }
        },
        {
          duration: 1000,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale1 = 0;
            this.scale2 = 1;
          }
        }
      ];
      let keyframes2: Array<KeyframeState> = [
        {
          duration: 2000,
          curve: Curve.Linear,
          event: () => {
            this.angle1 = 360;
          }
        }
      ];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes2);
    })
  }

  @Styles
  bounceStyle() {
    .width('60%')
    .height('60%')
    .borderRadius(this.spinSize)
    .backgroundColor(this.spinColor)
    .shadow(ShadowStyle.OUTER_DEFAULT_XS)
  }
}