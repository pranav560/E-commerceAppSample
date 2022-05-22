@Entry
@Component
struct Index {
  @State text: string = '';
  grid_scroller: Scroller = new Scroller();


  build() {
    Column({ space: 7 }) {


      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.menu")).width(45).height(45).borderRadius(3);
        Image($r("app.media.user_image")).width(45).height(45).borderRadius(10);
      }
      .margin({left:5})
      .margin({right:5})
      .width("90%")
      .padding({ top: 20 });

      Column(){
      Text('Discover \nour new items.').fontSize(20).fontWeight(FontWeight.Bold)
      }.alignItems(HorizontalAlign.Start).width("90%")

      //search
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        TextArea({ placeholder: 'Search.....' })
          .width(250)
          .height(50)
          .fontSize(20)
          .fontStyle(FontStyle.Italic)
          .onChange((value: string) => {
            this.text = value
          })
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Image($r("app.media.filter"));
        }
        .width(35)
        .height(50)
        .backgroundColor("#ffffff")
        .borderRadius(5)
        .opacity(0.2);
      }

      // coming soon
      Flex({ justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
        Image($r("app.media.shoes8")).width(70).height(70);
        Column() {
          Text("Nike shoes blue variant").fontSize(15).fontWeight(FontWeight.Bold).width(100);
          Text("Coming Soon...").fontSize(15).fontWeight(FontWeight.Bold).fontColor(Color.Red).width(100);
        }
        .width(130)

        Column() {
          Toggle({ type: ToggleType.Switch, isOn: false }).width(40).height(15);
          Text("Notify Me").fontColor(Color.Gray).fontSize(13);

        }
      }
      .backgroundColor("#fff0f5")
      .borderRadius(10)
      .height(90)
      .margin({ bottom: 20 });


      // categories
      Column(){
      Text("Categories").fontSize(20).fontWeight(FontWeight.Bold).margin({ bottom: 10 });
      }.alignItems(HorizontalAlign.Start).width("90%")
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Button("Shoes", { type: ButtonType.Capsule, stateEffect: true })
          .borderColor(Color.Black)
          .backgroundColor("#B57EDC")
        Button("Caps", { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor("#CCCCFF")
          .fontColor(Color.Black);
        Button("Watch", { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor("#CCCCFF")
          .fontColor(Color.Black);
        Button("Sofa", { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor("#CCCCFF")
          .fontColor(Color.Black);
      }.width("90%")

      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Text("Popular Now").fontWeight(FontWeight.Bold).fontSize(20);
        Row({space: 3}) {
          Text("View All").fontWeight(FontWeight.Bold).fontSize(20);
          Button(" > ", { type: ButtonType.Capsule, stateEffect: true })
          .padding(0)
          .width(35)
          .height(25)
          .backgroundColor("#CCCCFF").fontColor(Color.Black);
        }
      }.width("90%")

      Grid(this.grid_scroller) {
        // item
        GridItem() {
          Column() {
            Image($r("app.media.shoes1")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes2")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 2500").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes3")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 20000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes4")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 60000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes5")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Ultra slim laptop").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 50000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }
        GridItem() {
          Column() {
            Image($r("app.media.shoes6")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Ultra slim laptop").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 50000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }
        GridItem() {
          Column() {
            Image($r("app.media.shoes7")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Ultra slim laptop").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 50000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }
        GridItem() {
          Column() {
            Image($r("app.media.shoes8")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Ultra slim laptop").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 50000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }
      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .height(250);

      Divider().vertical(false).strokeWidth(1).color(0x2788D9).lineCap(LineCapStyle.Round)
      // bottom navigation bar
      Flex({ justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row }) {
        // navigation
        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.home")).objectFit(ImageFit.Cover).width(30).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Home").fontSize(15);
        }

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.category")).objectFit(ImageFit.Cover).width(30).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Categories").fontSize(15);
        }

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.notification")).objectFit(ImageFit.Cover).width(30).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Notification").fontSize(15);
        }

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(30).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Cart").fontSize(15);
        }

      }.backgroundColor("#ffffff")


    }
    .height('100%')
    .width('100%')
    .margin({bottom : 10})
  }
}