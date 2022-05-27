import 'package:amana_bi_bazar/Pages/bottom-nav-pages/cart/cart_screen.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/home/home_items.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/more/more_screen.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/my-item/my_items_screen.dart';
import 'package:amana_bi_bazar/Pages/bottom-nav-pages/offers/offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final screens = [
    const HomeItems(),
    const CartScreen(),
    const OfferScreen(),
    const MyItemsScreen(),
    const MoreScreen()
  ];
  var _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentScreenIndex,
        selectedLabelStyle: GoogleFonts.nunito(
            color: Colors.black, fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 20), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, size: 20), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.tag, size: 20), label: "Offers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 20), label: "My Item"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu, size: 20), label: "More"),
        ],
        onTap: (index) {
          setState(() {
            _currentScreenIndex = index;
          });
        },
      ),
      body: screens[_currentScreenIndex],
    );
  }
}
