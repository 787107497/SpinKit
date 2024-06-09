@Component
export struct SpinG {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State scale1: number = 1;
  @State scale2: number = 0.5;
  @State scale3: number = 0;

  build() {
    Row() {
      Canvas()
        .chunkStyle()
        .scale({ x: this.scale1, y: this.scale1 })

      Canvas()
        .chunkStyle()
        .scale({ x: this.scale2, y: this.scale2 })

      Canvas()
        .chunkStyle()
        .scale({ x: this.scale3, y: this.scale3 })
    }
    .width(this.spinSize)
    .height(this.spinSize / 3)
    .onAppear(() => {
      let keyframes1: Array<KeyframeState> = [
        {
          duration: 560,
          curve: Curve.Linear,
          event: () => {
            this.scale1 = 0;
          }
        },
        {
          duration: 560,
          curve: Curve.Linear,
          event: () => {
            this.scale1 = 1;
          }
        },
        {
          duration: 280,
          event: () => {

          }
        }
      ];
      let keyframes2: Array<KeyframeState> = [
        {
          duration: 280,
          curve: Curve.Linear,
          event: () => {
            this.scale2 = 1;
          }
        },
        {
          duration: 560,
          curve: Curve.Linear,
          event: () => {
            this.scale2 = 0;
          }
        },
        {
          duration: 280,
          curve: Curve.Linear,
          event: () => {
            this.scale2 = 0.5;
          }
        },
        {
          duration: 280,
          event: () => {

          }
        }
      ];
      let keyframes3: Array<KeyframeState> = [
        {
          duration: 560,
          curve: Curve.Linear,
          event: () => {
            this.scale3 = 1;
          }
        },
        {
          duration: 560,
          curve: Curve.Linear,
          event: () => {
            this.scale3 = 0;
          }
        },
        {
          duration: 280,
          event: () => {

          }
        }
      ];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 280 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 120 }, keyframes2);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes3);
    })
  }

  @Styles
  chunkStyle(){
    .height(this.spinSize / 3)
    .width(this.spinSize / 3)
    .borderRadius(this.spinSize / 3)
    .backgroundColor(this.spinColor)
    .shadow(ShadowStyle.OUTER_DEFAULT_XS)
  }
}