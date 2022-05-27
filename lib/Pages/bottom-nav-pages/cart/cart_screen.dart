import 'package:amana_bi_bazar/components/app_colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: const Center(
        child: Text("Cart Screen"),
      ),
    );
  }
}
