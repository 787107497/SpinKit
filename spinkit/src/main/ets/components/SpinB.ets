@Component
export struct SpinB {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State scale1: number = 0;
  @State scale2: number = 1;

  build() {
    Stack() {
      Canvas()
        .scale({ x: this.scale1, y: this.scale1 })
        .bounceStyle()
      Canvas()
        .scale({ x: this.scale2, y: this.scale2 })
        .bounceStyle()
    }
    .width(this.spinSize)
    .height(this.spinSize)
    .onAppear(() => {
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, [
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
      ]);
    })
  }

  @Styles
  bounceStyle() {
    .width('100%')
    .height('100%')
    .opacity(0.6)
    .borderRadius(this.spinSize)
    .backgroundColor(this.spinColor)
  }
}