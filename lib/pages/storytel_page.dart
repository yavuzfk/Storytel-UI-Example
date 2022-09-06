import 'package:flutter/material.dart';
import 'package:storytel_ui_example/Utilities/text_items.dart';
import 'package:storytel_ui_example/utilities/color_items.dart';
import 'package:storytel_ui_example/widgets/big_orange_button.dart';
import 'package:storytel_ui_example/widgets/bottom_app_bar.dart';
import 'package:storytel_ui_example/widgets/stack_for_books.dart';

class StorytelPageView extends StatefulWidget {
  const StorytelPageView({Key? key}) : super(key: key);

  @override
  State<StorytelPageView> createState() => _StorytelPageViewState();
}

class _StorytelPageViewState extends State<StorytelPageView>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const SizedBox(
                //   height: 26,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'STORYTEL',
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: "Lato",
                      ),
                    ),
                    Container(
                        width: 40,
                        height: 40,
                        child: Image.asset("images/storyNon.png")),
                    const Spacer(),
                    const Icon(Icons.notifications_none),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    width: 380,
                    height: 155,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      boxShadow: [ColorItems.boxShadow],
                      color: ColorItems.containerBackgroundColor,
                    ),
                    //
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Erişim için hemen abonelik başlat',
                                style: TextItems.highTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          containerInnerRow('Binlerce sesli kitap ve e-kitap'),
                          containerInnerRow('Her yerde dinle veye oku'),
                          containerInnerRow('İstediğin zaman iptal et'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              BigOrangeButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Sizes().betweenRowsSize),
                Row(
                  children: [
                    const Text(
                      'En Popüler Kitaplar ',
                      style: TextItems.highTextStyle,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: Sizes().iconSize,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Sana özel seçki!', style: TextItems.lowGrayTextStyle),
                    Text('Tümünü göster', style: TextItems.lowGrayTextStyle),
                  ],
                ),
                SizedBox(height: Sizes().betweenRowsSize),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  height: 130.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      stackForBooks(
                          bookImagePath: "images/kurkMantoluMadonna.jpg"),
                      SizedBox(width: 10),
                      stackForBooks(bookImagePath: "images/kirke.jpg"),
                      SizedBox(width: 10),
                      stackForBooks(bookImagePath: "images/superIyiGunler.jpg"),
                      SizedBox(width: 10),
                      stackForBooks(
                          bookImagePath: "images/kurkMantoluMadonna.jpg"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Spot Işıkları Altında ',
                        style: TextItems.highTextStyle),
                    Icon(
                      Icons.sunny,
                      color: Colors.yellow,
                      size: Sizes().iconSize,
                    ),
                    const Spacer(),
                    const Text('Tümünü göster',
                        style: TextItems.lowGrayTextStyle),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  height: 130.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      stackForBooks(bookImagePath: "images/insanlar.jpg"),
                      SizedBox(width: 10),
                      stackForBooks(bookImagePath: "images/dortAnlasma.jpg"),
                      SizedBox(width: 10),
                      stackForBooks(bookImagePath: "images/simyaci.jpg"),
                      SizedBox(width: 10),
                      stackForBooks(bookImagePath: "images/insanlar.jpg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 55, child: BottomAppBarS(tabController: _tabController)),
    );
  }

  Row containerInnerRow(String rowText) {
    return Row(
      children: [
        const Icon(
          Icons.done,
          color: Colors.deepOrange,
          size: 18,
        ),
         SizedBox(
          width: Sizes().betweenRowsSize,
        ),
        Text(
          rowText,
          style: TextItems.lowTextStyle,
        ),
      ],
    );
  }
}


class Sizes {
  final double iconSize = 16;
  final double betweenRowsSize = 2;
}
