import 'package:amana_bi_bazar/components/app_colors.dart';
import 'package:amana_bi_bazar/widgets/my_flat_icons.dart';
import 'package:amana_bi_bazar/widgets/my_icon.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        leading: IconButton(
          icon: MyIcon(
            icon: Icons.menu,
            iconColor: AppColors.iconColor,
            iconSize: 20,
          ),
          onPressed: () {},
        ),
        title: Row(
          children: [
            MyIcon(
                icon: Icons.place_rounded,
                iconSize: 16,
                iconColor: AppColors.appbarIconColor),
            SizedBox(width: 5),
            MyText(text: "Area:", textSize: 16, textColor: AppColors.textColor),
            SizedBox(width: 5),
            MyText(
                text: "Select Delivery Area",
                textSize: 16,
                textColor: AppColors.appbarTextColor),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10 / 3),
            child: IconButton(
                onPressed: () {},
                icon: MyIcon(
                    icon: Icons.search,
                    iconColor: AppColors.appbarIconColor,
                    iconSize: 20)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: MyIcon(
                    icon: Icons.person_rounded,
                    iconColor: AppColors.appbarIconColor,
                    iconSize: 24)),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: [
              MyText(text: "Fresh Item", textSize: 14),
              Flexible(
                child: ListView.separated(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Container(
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          elevation: 3,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/6.png",
                                        height: 80,
                                        width: 80,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          MyText(
                                              text: "Mango Juice",
                                              textSize: 12),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  MyText(
                                                      text: "Tk. 105",
                                                      textSize: 12,
                                                      textColor: Colors.green),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "120",
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  MyText(
                                                      text: "| pcs",
                                                      textSize: 12),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: MyFlatIcons(
                                                icons: Icons.remove,
                                              )),
                                          MyText(
                                            text: "1",
                                            textSize: 14,
                                            textColor: Colors.green,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: MyFlatIcons(
                                                icons: Icons.add,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 8);
                    },
                    itemCount: 15),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavController(),
    );
  }
}
