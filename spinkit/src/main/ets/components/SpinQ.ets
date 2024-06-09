@Component
export struct SpinQ {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State angle1: number = 0;
  @State scale2: number = 0.5;

  build() {
    Stack() {
      Canvas()
        .width(this.spinSize)
        .height(this.spinSize)
        .border({
          width: this.spinSize * 0.08,
          radius: this.spinSize,
          color: { top: this.spinColor, bottom: this.spinColor, left: Color.Transparent, right: Color.Transparent },
        })
        .rotate({ angle: this.angle1 })

      Canvas()
        .width(this.spinSize * 0.4)
        .height(this.spinSize * 0.4)
        .border({
          width: this.spinSize * 0.08,
          radius: this.spinSize,
          color: this.spinColor,
        })
        .shadow(ShadowStyle.OUTER_DEFAULT_XS)
        .scale({ x: this.scale2, y: this.scale2 })
    }
    .renderFit(RenderFit.CENTER)
    .width(this.spinSize)
    .height(this.spinSize)
    .onAppear(() => {
      let keyframes1: Array<KeyframeState> = [
        {
          duration: 1500,
          curve: Curve.Linear,
          event: () => {
            this.angle1 = 360
          }
        }];
      let keyframes2: Array<KeyframeState> = [
        {
          duration: 1000,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale2 = 1
          }
        },
        {
          duration: 1000,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale2 = 0.5
          }
        }];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes2);
    })
  }
}

