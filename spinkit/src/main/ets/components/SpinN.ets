@Component
export struct SpinN {
  @State spinSize: number = 60;
  @State spinColor: ResourceColor = Color.Blue;
  @State round1: number = this.spinSize * 0.2
  @State scale1: number = 1;
  @State scale2: number = 0.3;
  @State scale3: number = 0.4;
  @State scale4: number = 0.5;
  @State scale5: number = 0.6;
  @State scale6: number = 0.7;
  @State scale7: number = 0.8;
  @State scale8: number = 0.9;
  @State angle1: number = 0;

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
      .frame1Style()
      .rotate({ angle: 0 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale2, y: this.scale2 })
      }
      .frame1Style()
      .rotate({ angle: 45 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale3, y: this.scale3 })
      }
      .frame1Style()
      .rotate({ angle: 90 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale4, y: this.scale4 })
      }
      .frame1Style()
      .rotate({ angle: 135 })


      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale5, y: this.scale5 })
      }
      .frame1Style()
      .rotate({ angle: 180 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale6, y: this.scale6 })
      }
      .frame1Style()
      .rotate({ angle: 225 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale7, y: this.scale7 })
      }
      .frame1Style()
      .rotate({ angle: 270 })

      Column() {
        Canvas()
          .roundStyle()
          .scale({ x: this.scale8, y: this.scale8 })
      }
      .frame1Style()
      .rotate({ angle: 315 })
    }
    .renderFit(RenderFit.CENTER)
    .width(this.spinSize)
    .height(this.spinSize)
    .rotate({ angle: this.angle1 })
    .onAppear(() => {
      this.getUIContext().keyframeAnimateTo({ iterations: -1, delay: 0 }, [{
        duration: 1200,
        curve: Curve.Linear,
        event: () => {
          this.angle1 = 360
        }
      }]);
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
  frame1Style(){
    .height('100%')
    .width(this.round1)
  }
}

