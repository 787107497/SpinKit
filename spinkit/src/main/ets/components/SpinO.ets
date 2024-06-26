@Component
export struct SpinO {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.White;
  @State round1: number = this.spinSize * 0.2
  @State rotate7: number = 0;
  @State scale1: number = 1;
  @State scale2: number = 1;
  @State scale3: number = 1;
  @State scale4: number = 1;
  @State scale5: number = 1;
  @State scale6: number = 1;
  @State rotate1: number = 0;
  @State rotate2: number = 0;
  @State rotate3: number = 0;
  @State rotate4: number = 0;
  @State rotate5: number = 0;
  @State rotate6: number = 0;

  aboutToAppear(): void {
    this.round1 = this.spinSize * 0.2
  }

  build() {
    Stack() {
      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale1, y: this.scale1 })
      }
      .frameStyle()
      .rotate({ angle: this.rotate1 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale2, y: this.scale2 })
      }
      .frameStyle()
      .rotate({ angle: this.rotate2 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale3, y: this.scale3 })
      }
      .frameStyle()
      .rotate({ angle: this.rotate3 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale4, y: this.scale4 })
      }
      .frameStyle()
      .rotate({ angle: this.rotate4 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale5, y: this.scale5 })
      }
      .frameStyle()
      .rotate({ angle: this.rotate5 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale6, y: this.scale6 })
      }
      .frameStyle()
      .rotate({ angle: this.rotate6 })
    }
    .renderFit(RenderFit.CENTER)
    .width(this.spinSize)
    .height(this.spinSize)
    .rotate({ angle: this.rotate7 })
    .onAppear(() => {
      let keyframes0: Array<KeyframeState> = [
        {
          duration: 3000,
          curve: Curve.Linear,
          event: () => {
            this.rotate7 = 360
          }
        }];
      let keyframes1: Array<KeyframeState> = [
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale1 = 0.4
          }
        },
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale1 = 1
          }
        }];
      let keyframes2: Array<KeyframeState> = [
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale2 = 0.4
          }
        },
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale2 = 1
          }
        }];
      let keyframes3: Array<KeyframeState> = [
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale3 = 0.4
          }
        },
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale3 = 1
          }
        }];
      let keyframes4: Array<KeyframeState> = [
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale4 = 0.4
          }
        },
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale4 = 1
          }
        }];
      let keyframes5: Array<KeyframeState> = [
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale5 = 0.4
          }
        },
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale5 = 1
          }
        }];
      let keyframes6: Array<KeyframeState> = [
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale6 = 0.4
          }
        },
        {
          duration: 800,
          curve: Curve.EaseInOut,
          event: () => {
            this.scale6 = 1
          }
        }];

      let keyframes7: Array<KeyframeState> = [
        {
          duration: 1550,
          curve: Curve.EaseInOut,
          event: () => {
            this.rotate1 = 360
          }
        },
        {
          duration: 50,
          curve: Curve.EaseInOut,
          event: () => {
          }
        }
      ];
      let keyframes8: Array<KeyframeState> = [
        {
          duration: 1500,
          curve: Curve.EaseInOut,
          event: () => {
            this.rotate2 = 360
          }
        },
        {
          duration: 100,
          curve: Curve.EaseInOut,
          event: () => {
          }
        }
      ];
      let keyframes9: Array<KeyframeState> = [
        {
          duration: 1450,
          curve: Curve.EaseInOut,
          event: () => {
            this.rotate3 = 360
          }
        },
        {
          duration: 150,
          curve: Curve.EaseInOut,
          event: () => {
          }
        }
      ];
      let keyframes10: Array<KeyframeState> = [
        {
          duration: 1400,
          curve: Curve.EaseInOut,
          event: () => {
            this.rotate4 = 360
          }
        },
        {
          duration: 200,
          curve: Curve.EaseInOut,
          event: () => {
          }
        }
      ];
      let keyframes11: Array<KeyframeState> = [
        {
          duration: 1350,
          curve: Curve.EaseInOut,
          event: () => {
            this.rotate5 = 360
          }
        },
        {
          duration: 250,
          curve: Curve.EaseInOut,
          event: () => {
          }
        }
      ];
      let keyframes12: Array<KeyframeState> = [
        {
          duration: 1300,
          curve: Curve.EaseInOut,
          event: () => {
            this.rotate6 = 360
          }
        },
        {
          duration: 300,
          curve: Curve.EaseInOut,
          event: () => {
          }
        }
      ];
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, keyframes0);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -1100 }, keyframes1);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -1000 }, keyframes2);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -900 }, keyframes3);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -800 }, keyframes4);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -700 }, keyframes5);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -600 }, keyframes6);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -1100 }, keyframes7);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -1000 }, keyframes8);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -900 }, keyframes9);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -800 }, keyframes10);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -700 }, keyframes11);
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: -600 }, keyframes12);
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
