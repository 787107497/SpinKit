@Component
export struct SpinS {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State angle1: number = 0;
  @State scale2: number = 0.3;

  build() {
    Stack() {
      Canvas()
        .width(this.spinSize)
        .height(this.spinSize)
        .border({
          width: this.spinSize * 0.08,
          radius: this.spinSize,
          color: this.spinColor,
          style: {
            top: BorderStyle.Solid,
            right: BorderStyle.Dotted,
            bottom: BorderStyle.Solid,
            left: BorderStyle.Dotted
          }
        })
        .rotate({ angle: this.angle1 })

      Canvas()
        .width(this.spinSize * 0.5)
        .height(this.spinSize * 0.5)
        .border({
          width: this.spinSize * 0.08,
          radius: this.spinSize,
          color: this.spinColor,
          style: {
            top: BorderStyle.Dotted,
            right: BorderStyle.Solid,
            bottom: BorderStyle.Dotted,
            left: BorderStyle.Solid
          }
        })
        .scale({ x: this.scale2, y: this.scale2 })
    }
    .renderFit(RenderFit.CENTER)
    .width(this.spinSize)
    .height(this.spinSize)
    .onAppear(() => {
      let keyframes1: Array<KeyframeState> = [
        {
          duration: 2000,
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
            this.scale2 = 0.9
          }
        },
        {
          duration: 1000,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale2 = 0.3
          }
        }];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes2);
    })
  }
}

