@Entry
@Component
struct Detail {
  @State counts: number = 1
  @State value: number = 1

  build() {
    Column({ space: 10 }) {
      //back button row
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Image($r("app.media.backbutton")).width(20).height(20)
        }.width(40).height(40).backgroundColor("#ffffff");
        Text("Details").fontSize(30);
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Image($r("app.media.tripledot")).width(20).height(20)
        }.width(40).height(40).backgroundColor("#ffffff");
      }.width("90%")
      .margin({ bottom: 7 })

      // product image with rating
      Stack({ alignContent: Alignment.BottomEnd }) {
        Image($r("app.media.shoes6")).width(300).height(200).backgroundColor("#fff0f5");
        Column({ space: 5 }) {
          Row({ space: 5 }) {
            Image($r("app.media.star")).width(25).height(25).borderRadius(10);
            Text("4.7").fontWeight(FontWeight.Bold).fontSize(20);
          }.padding({ top: 4 })

          Text("202 reviews").fontSize(12);
        }
        .backgroundColor("#9BDDFF")
        .borderColor("#FFC1CC")
        .borderRadius(10)
        .padding(2)
        .borderWidth(5);
      }
      .height(215)
      .width("90%")
      .borderWidth(1)
      .borderColor("#000000")
      .borderRadius(10);

      Column() {
        Text("Running Shoes \nRs.3599").fontSize(17)
      }.alignItems(HorizontalAlign.Start).width("90%").backgroundColor("#FFF0F5")

      //product description
      Column() {
        Text("Nike shoes provide excellent support – Nike shoes comes with a herringbone pattern and a solid rubber, which adds to the comfort and support of users. – Nike shoes are lightweight and durable – Despite provides exceptional comfort, flexibility, of Nike shoes are very light.")
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .fontSize(15)
          .textAlign(TextAlign.Start)
          .maxLines(4)
          .fontSize(17)
          .fontColor(Color.Gray)
      }.alignItems(HorizontalAlign.Start).width('90%')


      Blank()


      // color choice and no. of item counter
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
        Text("Color:").fontSize(20);
        Column() {
          Radio({ group: "Color", value: "Blue" })
            .borderColor(Color.Blue)
            .borderRadius(30)
            .borderWidth(4)
            .checked(true);
          Text("Blue").fontColor(Color.Blue).fontSize(13)
        }

        Column() {
          Radio({ group: "Color", value: "red" })
            .borderColor(Color.Red)
            .borderRadius(30)
            .borderWidth(4);
          Text("Red").fontColor(Color.Red).fontSize(13)
        }

        Column() {
          Radio({ group: "Color", value: "Green" })
            .borderColor(Color.Green)
            .borderRadius(30).borderWidth(4);
          Text("Green").fontColor(Color.Green).fontSize(13)
        }

        Counter() {
          Text(this.value.toString()).fontSize(15)
        }.margin(10).backgroundColor("#9BDDFF")
        .onInc(() => {
          this.value++
        })
        .onDec(() => {
          this.value--
        })
      }.width("90%")


      Text('Available Sizes').fontSize(20).fontColor(0x000000).width('90%').margin({ top: 10 })

      Row({ space: 9 }) {
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text('6inches').fontSize(16)
        }
        .width(68)
        .height(40)
        .backgroundColor("#E7FEFF")
        .borderRadius(7)
        .borderWidth(1)
        .borderColor(Color.Gray);
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text('7inches').fontSize(16)
        }
        .width(68)
        .height(40)
        .backgroundColor("#E7FEFF")
        .borderRadius(7)
        .borderWidth(1)
        .borderColor(Color.Gray);
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text('8inches').fontSize(16)
        }
        .width(68)
        .height(40)
        .borderWidth(1)
        .backgroundColor("#A1CAF1")
        .borderRadius(7)
        .borderColor(Color.Gray);

        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text('9inches').fontSize(16)
        }
        .width(68)
        .height(40)
        .backgroundColor("#E7FEFF")
        .borderRadius(7)
        .borderWidth(1)
        .borderColor(Color.Gray);


      }
      .height(70)
      .width('90%')
      .padding(10)
      .backgroundColor("#ffffff")

      Blank();

      // fav and add_to_cart
      Flex({ justifyContent: FlexAlign.SpaceAround }) {

        Row() {
          Text("Add to\nFavourite  ").fontSize(15);
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Image($r("app.media.fav")).padding(5).width(50).height(50).borderRadius(25);
          }
          .width(55)
          .height(50)
          .borderWidth(3)
          .backgroundColor(Color.White)
          .borderRadius(5)
          .borderColor(Color.Gray)
          .opacity(0.9);
        }
        .backgroundColor("#E7FEFF")
        .padding(10)
        .borderWidth(3)
        .borderColor(Color.Gray)
        .borderRadius(10);
        Row() {
          Text("Add to cart  ").fontSize(15);
          Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(30).height(40);
        }
        .backgroundColor("#E7FEFF")
        .padding(10)
        .borderWidth(3)
        .borderColor(Color.Gray)
        .borderRadius(10);
      }
    }
    .width("100%")
    .margin({ top: 10 })
  }
}