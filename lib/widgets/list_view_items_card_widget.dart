import 'package:amana_bi_bazar/components/app_colors.dart';
import 'package:amana_bi_bazar/widgets/my_icon.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ListViewItemsCardWidget extends StatefulWidget {
  const ListViewItemsCardWidget({Key? key}) : super(key: key);

  @override
  State<ListViewItemsCardWidget> createState() =>
      _ListViewItemsCardWidgetState();
}

class _ListViewItemsCardWidgetState extends State<ListViewItemsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        itemCount: 3,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        separatorBuilder: (_, index) {
          return SizedBox(width: 10);
        },
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            decoration: BoxDecoration(
                color: AppColors.containerBgColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 5, offset: Offset(3, 3)),
                ]),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 5,
                  right: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: MyText(
                            text: "OFF", textColor: Colors.white, textSize: 10),
                      ),
                      MyIcon(
                          icon: Icons.favorite,
                          iconSize: 14,
                          iconColor: AppColors.iconColor)
                    ],
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 55,
                  child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "assets/images/6.png",
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  bottom: 25,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            text: "Mango Juice",
                            textSize: 12,
                            textColor: AppColors.textColor),
                        MyText(
                            text: "Tk. 45",
                            textSize: 10,
                            textColor: AppColors.textColor),
                      ]),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 30,
                    onPressed: () {},
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15 / 3),
                            bottomRight: Radius.circular(15 / 3))),
                    child: MyText(
                      text: "Add Cart",
                      textSize: 10,
                      textColor: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
