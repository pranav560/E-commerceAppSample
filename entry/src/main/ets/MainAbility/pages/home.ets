@Entry
@Component
struct Home {
  @State text: string = '';
  grid_scroll: Scroller = new Scroller();

  build() {
    Column({ space: 7 }) {
      //user icon row
      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.icon")).width(45).height(45).borderRadius(3);
        Image($r("app.media.user_image")).width(45).height(45).borderRadius(14);
      }
      .margin({ left: 5 })
      .margin({ right: 5 })
      .width("90%")
      .padding({ top: 20 });

      Column() {
        Text('Discover \nour new items.').fontSize(20).fontWeight(FontWeight.Bold)
      }.alignItems(HorizontalAlign.Start).width("90%").margin({ top: 10 })

      //search & filter
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        TextArea({ placeholder: 'Search.....' })
          .width(270)
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
      }.margin({ bottom: 10 })

      // coming soon ...
      Flex({ justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
        Image($r("app.media.shoes8")).width(70).height(70);
        Column() {
          Text("Nike shoes blue variant").fontSize(18).fontWeight(FontWeight.Bold).width(120);
          Text("Coming Soon...").fontSize(18).fontWeight(FontWeight.Bold).fontColor(Color.Red).width(120);
        }

        Column() {
          Toggle({ type: ToggleType.Switch, isOn: false }).width(50).height(20);
          Text("Notify Me").fontColor(Color.Gray).fontSize(14);
        }
      }
      .backgroundColor("#fff0f5")
      .borderRadius(10)
      .height(95)
      .margin({ bottom: 10 });

      // categories of products
      Column() {
        Text("Categories").fontSize(20).fontWeight(FontWeight.Bold).margin({ bottom: 10 });
      }.alignItems(HorizontalAlign.Start).width("90%")

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Button("Shoes", { type: ButtonType.Capsule, stateEffect: true })
          .borderColor(Color.Gray)
          .backgroundColor("#B57EDC")
          .borderWidth(1)
          .borderRadius(10)

        Button("Caps", { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor("#CCCCFF")
          .borderWidth(1)
          .borderRadius(10)
          .fontColor(Color.Gray);
        Button("Watch", { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor("#CCCCFF")
          .borderWidth(1)
          .borderRadius(10)
          .fontColor(Color.Gray);
        Button("Sofa", { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor("#CCCCFF")
          .borderWidth(1)
          .borderRadius(10)
          .fontColor(Color.Gray);
      }.width("90%").margin({bottom:10})

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Text("Popular products").fontWeight(FontWeight.Bold).fontSize(20);
        Row({ space: 5 }) {
          Text("View All").fontWeight(FontWeight.Bold).fontSize(20);
          Button(" > ", { type: ButtonType.Capsule, stateEffect: true })
            .padding(0)
            .width(35)
            .height(25)
            .backgroundColor("#CCCCFF")
            .fontColor(Color.Black);
        }
      }.width("90%")

      //Products with scroll
      Grid(this.grid_scroll) {
        // items
        GridItem() {
          Column() {
            Image($r("app.media.shoes2")).width(140).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bold).fontSize(12);
            Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(150)
          .borderColor(Color.Gray);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes5")).width(140).height(130);
            Text("Sneakers Unisex Shoes").fontWeight(FontWeight.Bold).fontSize(12);
            Text("₹ 2500").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(150)
          .borderColor(Color.Gray);
        }


        GridItem() {
          Column() {
            Image($r("app.media.shoes4")).width(140).height(130);
            Text("Sneakers Unisex Shoes").fontWeight(FontWeight.Bold).fontSize(12);
            Text("₹ 6000").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(150)
          .borderColor(Color.Gray);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes1")).width(140).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bold).fontSize(12);
            Text("₹ 5000").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(150)
          .borderColor(Color.Gray);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes6")).width(140).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bold).fontSize(12);
            Text("₹ 5000").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(150)
          .borderColor(Color.Gray);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoes8")).width(140).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bold).fontSize(12);
            Text("₹ 3000").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(150)
          .borderColor(Color.Gray);
        }
      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .width("90%")
      .rowsGap(5)
      .height(250);

      Divider().vertical(false).strokeWidth(1).color(0x2788D9).lineCap(LineCapStyle.Round)

      // bottom tabs
      Flex({ justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row }) {

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.homenew")).objectFit(ImageFit.Cover).width(32).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Home").fontSize(15);
        }

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.category")).objectFit(ImageFit.Cover).width(32).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Categories").fontSize(15);
        }

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.notification")).objectFit(ImageFit.Cover).width(32).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Notification").fontSize(15);
        }

        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(32).height(30);
          }.backgroundColor("#ffffff")
          .width(40).height(40);
          Text("Cart").fontSize(15);
        }
      }.backgroundColor("#ffffff")

    }
    .height('100%')
    .width('100%')
    .margin({ bottom: 10 })
  }
}