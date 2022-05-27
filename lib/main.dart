import 'package:amana_bi_bazar/Pages/basic_information.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/cart/cart_screen.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/home/home.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/home/home_items.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/my-item/my_items_screen.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/offers/offer_screen.dart';
import 'package:amana_bi_bazar/Pages/log_in.dart';
import 'package:amana_bi_bazar/Pages/order_details.dart';
import 'package:amana_bi_bazar/Pages/order_list.dart';
import 'package:amana_bi_bazar/Pages/sign_up.dart';
import 'package:amana_bi_bazar/controllers/bottom_nav_controller.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Amana Big Bazar',
      debugShowCheckedModeBanner: false,
      initialRoute: '/OrderDetails',
      routes: {
        '/Login': (context) => Login(),
        '/SignUp': (context) => SignUp(),
        '/Bottom': (context) => BottomNavController(),
        '/HomeItems': (context) => HomeItems(),
        '/Cart': (context) => CartScreen(),
        '/Offer': (context) => OfferScreen(),
        '/MyItems': (context) => MyItemsScreen(),
        '/BasicInformation': (context) => BasicInformation(),

        '/OrderDetails': (context) => OrderDetails(),
        '/OrderList': (context) => OrderList(),
        '/Home': (context) => Home(),

        //'/SignUp': (context) => SignUp(),
      },
    ),
  );
}
