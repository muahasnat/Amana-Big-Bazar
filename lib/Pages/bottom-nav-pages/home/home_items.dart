import 'package:amana_bi_bazar/components/app_colors.dart';
import 'package:amana_bi_bazar/widgets/items_row_text_widget.dart';
import 'package:amana_bi_bazar/widgets/list_view_items_card_widget.dart';
import 'package:amana_bi_bazar/widgets/my_icon.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class HomeItems extends StatefulWidget {
  const HomeItems({Key? key}) : super(key: key);

  @override
  State<HomeItems> createState() => _HomeItemsState();
}

class _HomeItemsState extends State<HomeItems> {
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
            SizedBox(width: 10 / 2),
            MyText(text: "Area:", textSize: 16, textColor: AppColors.textColor),
            SizedBox(width: 10 / 2),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ItemsRowTextWidget(),
                SizedBox(height: 10),
                const Flexible(child: ListViewItemsCardWidget()),
                SizedBox(height: 10),
                ItemsRowTextWidget(),
                SizedBox(height: 10),
                const Flexible(child: ListViewItemsCardWidget()),
                SizedBox(height: 10),
                ItemsRowTextWidget(),
                SizedBox(height: 10),
                const Flexible(child: ListViewItemsCardWidget()),
                SizedBox(height: 10),
                ItemsRowTextWidget(),
                SizedBox(height: 10),
                const Flexible(child: ListViewItemsCardWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
