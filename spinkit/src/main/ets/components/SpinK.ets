@Component
export struct SpinK {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.Blue;
  @State round1: number = this.spinSize * 0.14
  @State opacity1: number = 0;
  @State opacity2: number = 0;
  @State opacity3: number = 0;
  @State opacity4: number = 0;
  @State opacity5: number = 0;
  @State opacity6: number = 0;
  @State opacity7: number = 0;
  @State opacity8: number = 0;
  @State opacity9: number = 0;
  @State opacity10: number = 0;
  @State opacity11: number = 0;
  @State opacity12: number = 0;

  aboutToAppear(): void {
    this.round1 = this.spinSize * 0.14
  }

  build() {
    Stack() {
      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity1)
      }
      .frameStyle()
      .rotate({ angle: 0 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity2)
      }
      .frameStyle()
      .rotate({ angle: 30 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity3)
      }
      .frameStyle()
      .rotate({ angle: 60 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity4)
      }
      .frameStyle()
      .rotate({ angle: 90 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity5)
      }
      .frameStyle()
      .rotate({ angle: 120 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity6)
      }
      .frameStyle()
      .rotate({ angle: 150 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity7)
      }
      .frameStyle()
      .rotate({ angle: 180 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity8)
      }
      .frameStyle()
      .rotate({ angle: 210 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity9)
      }
      .frameStyle()
      .rotate({ angle: 240 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity10)
      }
      .frameStyle()
      .rotate({ angle: 270 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity11)
      }
      .frameStyle()
      .rotate({ angle: 300 })

      Column() {
        Canvas()
          .roundStyle()
          .opacity(this.opacity12)
      }
      .frameStyle()
      .rotate({ angle: 330 })
    }
    .renderFit(RenderFit.CENTER)
    .width(this.spinSize)
    .height(this.spinSize)
    .onAppear(() => {
      let keyframes1: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity1 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity1 = 0
          }
        }];
      let keyframes2: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity2 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity2 = 0
          }
        }];
      let keyframes3: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity3 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity3 = 0
          }
        }];
      let keyframes4: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity4 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity4 = 0
          }
        }];
      let keyframes5: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity5 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity5 = 0
          }
        }];
      let keyframes6: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity6 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity6 = 0
          }
        }];
      let keyframes7: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity7 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity7 = 0
          }
        }];
      let keyframes8: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity8 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity8 = 0
          }
        }];
      let keyframes9: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity9 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity9 = 0
          }
        }];
      let keyframes10: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity10 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity10 = 0
          }
        }];
      let keyframes11: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity11 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity11 = 0
          }
        }];
      let keyframes12: Array<KeyframeState> = [
        {
          duration: 480,
          curve: Curve.Linear,
          event: () => {
            this.opacity12 = 1
          }
        },
        {
          duration: 720,
          curve: Curve.Linear,
          event: () => {
            this.opacity12 = 0
          }
        }];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -1100 }, keyframes2);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -1000 }, keyframes3);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -900 }, keyframes4);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -800 }, keyframes5);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -700 }, keyframes6);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -600 }, keyframes7);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -500 }, keyframes8);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -400 }, keyframes9);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -300 }, keyframes10);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -200 }, keyframes11);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -100 }, keyframes12);
    })
  }

  @Styles
  roundStyle(){
    .width(this.round1)
    .height(this.round1)
    .borderRadius(this.round1)
    .backgroundColor(this.spinColor)
    .shadow(ShadowStyle.OUTER_DEFAULT_XS)
  }

  @Styles
  frameStyle(){
    .height('100%')
    .width(this.round1)
  }
}
