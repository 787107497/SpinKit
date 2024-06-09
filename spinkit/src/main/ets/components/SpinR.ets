@Component
export struct SpinR {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State angle1: number = 0;
  @State angle2: number = 0;

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
            bottom: BorderStyle.Dotted,
            left: BorderStyle.Solid
          }
        })
        .rotate({ angle: this.angle1 })

      Canvas()
        .width(this.spinSize * 0.45)
        .height(this.spinSize * 0.45)
        .border({
          width: this.spinSize * 0.08,
          radius: this.spinSize,
          color: this.spinColor,
          style: {
            top: BorderStyle.Solid,
            right: BorderStyle.Solid,
            bottom: BorderStyle.Dotted,
            left: BorderStyle.Solid
          }
        })
        .rotate({ angle: this.angle2 })

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
          curve: Curve.Linear,
          event: () => {
            this.angle2 = -360
          }
        }];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes2);
    })
  }
}

