import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: MyText(
          text: "Order List",
          textSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(text: "My Order", textSize: 16),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //height: 120,
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.green),
                                        child: Center(
                                          child: MyText(
                                            text: "Processing",
                                            textSize: 12,
                                            textColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      MyText(
                                          text: "Order #2192466", textSize: 14),
                                      MyText(text: "TL. 350", textSize: 14),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                IconButton(
                                                  //color: Colors.black,
                                                  icon: Icon(
                                                    Icons.shopping_bag_outlined,
                                                    color: Colors.red,
                                                    size: 18.0,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                                MyText(
                                                    text: "Cancle Order",
                                                    textSize: 12)
                                              ],
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                  // color: Colors.black,
                                                  icon: Icon(
                                                    Icons.payment,
                                                    color: Colors.red,
                                                    size: 18.0,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                                MyText(
                                                    text: "Change Payment",
                                                    textSize: 12)
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    color: Colors.white,
                                    size: 12.2,
                                  ),
                                  MyText(
                                    text: "View Details",
                                    textSize: 12,
                                    textColor: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 12);
                  },
                  itemCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}
