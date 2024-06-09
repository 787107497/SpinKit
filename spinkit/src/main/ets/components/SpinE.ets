@Component
export struct SpinE {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State scale1: number = 1;
  @State opacity1: number = 1;

  build() {
    Canvas()
      .width(this.spinSize)
      .height(this.spinSize)
      .borderRadius(this.spinSize)
      .backgroundColor(this.spinColor)
      .renderFit(RenderFit.CENTER)
      .scale({ x: this.scale1, y: this.scale1 })
      .opacity(this.opacity1)
      .onAppear(() => {
        this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, [
          {
            duration: 0,
            curve: Curve.EaseInOut,
            event: () => {
              this.scale1 = 0
              this.opacity1 = 1
            }
          },
          {
            duration: 1000,
            curve: Curve.EaseInOut,
            event: () => {
              this.scale1 = 1.0
              this.opacity1 = 0.01
            }
          }
        ])
      })
  }
}