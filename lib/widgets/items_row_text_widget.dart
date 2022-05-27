import 'package:amana_bi_bazar/components/app_colors.dart';
import 'package:amana_bi_bazar/widgets/my_icon.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ItemsRowTextWidget extends StatefulWidget {
  const ItemsRowTextWidget({Key? key}) : super(key: key);

  @override
  State<ItemsRowTextWidget> createState() => _ItemsRowTextWidgetState();
}

class _ItemsRowTextWidgetState extends State<ItemsRowTextWidget> {
  @override
  Widget build(BuildContext context) {
    var myIcon = MyIcon;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
            text: "Fresh Item", textSize: 14, textColor: AppColors.textColor),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              MyText(
                  text: "View all",
                  textSize: 12,
                  textColor: AppColors.appbarTextColor),
              MyIcon(
                  icon: Icons.arrow_forward_ios_rounded,
                  iconSize: 10,
                  iconColor: AppColors.appbarTextColor)
            ],
          ),
        )
      ],
    );
  }
}
