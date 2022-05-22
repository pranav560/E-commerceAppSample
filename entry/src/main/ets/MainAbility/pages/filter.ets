@Entry
@Component
struct Index {

  @State outSetValue: number = 2000;
  brand_list: SelectOption[] = [
    { value: "brand 1" },
    { value: "brand 2" },
    { value: "brand 3" }
  ];
  category_list: SelectOption[] = [
    { value: "category 1" },
    { value: "category 2" },
    { value: "category 3" }
  ]

  build() {
    Column({ space: 7 }) {
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
        Button({ type: ButtonType.Circle, stateEffect: true }) {
          Image($r("app.media.backbutton")).width(20).height(20)
        }.width(40).height(40).backgroundColor("#ffffff");
        Text("Filter").fontSize(30);
        Button({ type: ButtonType.Circle, stateEffect: true }) {
          Image($r("app.media.tripledot")).width(40).height(20)
        }.width(40).height(40).backgroundColor("#ffffff");
      }.width("90%")
      .margin({top :10 })
        Blank();
      Column({ space: 5 }) {
        Text('Gender').fontSize(24).fontColor(0x000000).width('90%')
        Row({ space: 8 }) {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('male').fontSize(24)
          }.width(80).height(40).backgroundColor("#A1CAF1").borderRadius(7).borderColor(Color.Gray);
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('female').fontSize(24)
          }.width(80).height(40).backgroundColor("#E7FEFF").borderRadius(7).borderColor(Color.Gray);
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('both').fontSize(24)
          }.width(80).height(40).backgroundColor("#E7FEFF").borderRadius(7).borderColor(Color.Gray);
        }
        .height(70)
        .width('90%')
        .padding(10)

      }

      Column({ space: 5 }) {
        Text('Category').fontSize(24).fontColor(0x000000).width('100%')
        Select(this.category_list)
          .selected(2)
          .height(50)
          .width("100%")
          .backgroundColor("#E7FEFF")
          .borderRadius(10);
      }
      .height(90)
      .width('90%')

      Column({ space: 5 }) {
        Text("Brand").fontSize(24).width("100%");
        Select(this.brand_list)
          .selected(0)
          .width("100%")
          .height(50)
          .backgroundColor("#E7FEFF")
          .borderRadius(10);

      }
      .height(90)
      .width('90%')


      Blank();
      Text('Price').fontSize(25).fontColor(0x000000).width('90%')
      Row() {
        Slider({
          value: this.outSetValue,
          min: 1000,
          max: 10000,
          step: 100,
          style: SliderStyle.OutSet
        })
          .blockColor(Color.Blue)
          .trackColor(Color.Gray)
          .selectedColor(Color.Blue)
          .showSteps(true)
          .showTips(true)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.outSetValue = value
            console.info('value:' + value + 'mode:' + mode.toString())
          }).padding({top:10});
        Text(this.outSetValue.toFixed(0)).fontSize(16)
      }
      .padding({ top: 20 })
      .width('75%')


      Column({ space: 5 }) {
        Text('Sizes').fontSize(24).fontColor(0x000000).width('90%')
        Row({ space: 11 }) {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('6inches').fontSize(18)
          }.width(65).height(45).backgroundColor("#E7FEFF").borderRadius(7);
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('7inches').fontSize(18)
          }.width(65).height(45).backgroundColor("#E7FEFF").borderRadius(7);
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('8inches').fontSize(18)
          }.width(65).height(45).backgroundColor("#A1CAF1").borderRadius(7);
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Text('9inches').fontSize(18)
          }.width(65).height(45).backgroundColor("#E7FEFF").borderRadius(7);
        }
        .height(70)
        .width('90%')
        .padding(10)
      }
      .margin({ top: 20 })

      Flex({ justifyContent: FlexAlign.SpaceEvenly }) {
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Text("Clear All").fontSize(24);
        }.width(120).height(80).backgroundColor("#E7FEFF");
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Text("ADD").fontSize(24).fontColor(Color.Black);
        }.width(120).height(80).backgroundColor("#A1CAF1");
      }.width("90%")
      .width('100%').margin({ top: 15 })
    }
    .width('100%').margin({ top: 5 })

  }
}