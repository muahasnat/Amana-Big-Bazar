import 'package:amana_bi_bazar/components/app_colors.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: const Center(
        child: Text("More Screen"),
      ),
    );
  }
}
