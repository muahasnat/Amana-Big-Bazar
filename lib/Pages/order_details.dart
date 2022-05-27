import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: MyText(
          text: "Order #2192466",
          textSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 0.3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/1.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              MyText(
                                text: "Order",
                                textSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              MyText(text: "Cancelled", textSize: 14)
                            ],
                          ),
                          MyText(text: "order ID #2192466", textSize: 14)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            color: Colors.black,
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.green,
                            ),
                            onPressed: () {},
                          ),
                          MyText(
                            text: "Reorder",
                            textSize: 14,
                            textColor: Colors.grey,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            color: Colors.black,
                            icon: Icon(
                              Icons.payments,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          MyText(
                            text: "Pay Naw",
                            textSize: 14,
                            textColor: Colors.grey,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            color: Colors.black,
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          MyText(
                            text: "Cancle",
                            textSize: 14,
                            textColor: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      MyText(text: "Delivery Address", textSize: 14),
                      MyText(
                          text: "Jatrabari, Dahaka, Bangladesh", textSize: 14),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text: "Order #2192466", textSize: 10),
                  MyText(text: "Today.2:00PM - 4:00PM", textSize: 10)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Expanded(
                child: ListView.separated(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          MyText(
                                              text: "Mango Juice",
                                              textSize: 14),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  MyText(
                                                    text: "Tk. 105",
                                                    textSize: 12,
                                                    textColor: Colors.green,
                                                  ),
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
                                                      text: "| 1 pcs",
                                                      textSize: 12),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      MyText(text: "TK. 65", textSize: 14),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Quantity. 1",
                                        style:
                                            TextStyle(color: Colors.grey[500]),
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
                      return const SizedBox(height: 2);
                    },
                    itemCount: 3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
