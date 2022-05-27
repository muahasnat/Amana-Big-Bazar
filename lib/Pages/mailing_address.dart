// ignore_for_file: deprecated_member_use

import 'package:amana_bi_bazar/widgets/my_elevated_button.dart';
import 'package:amana_bi_bazar/widgets/my_flat_icons.dart';
import 'package:amana_bi_bazar/widgets/my_other_textformfield.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class MailingAddress extends StatefulWidget {
  const MailingAddress({Key? key}) : super(key: key);

  @override
  State<MailingAddress> createState() => _MailingAddressState();
}

class _MailingAddressState extends State<MailingAddress> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otherEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MyText(text: "PERSONAL INFORMATION", textSize: 16),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 25,
                ),
                MyText(
                  text: "Primary Email",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _emailController,
                  textInputType: TextInputType.emailAddress,
                  hintText: "Enter your primary email",
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: "Other Email",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _otherEmailController,
                  textInputType: TextInputType.emailAddress,
                  hintText: "Other email",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyButton(
                        buttonHeight: 30,
                        buttonWidth: 100,
                        buttonColor: Colors.grey,
                        buttonText: "CANCEL",
                        fontSize: 10,
                        onPressed: () {}),
                    SizedBox(
                      width: 6,
                    ),
                    MyButton(
                        buttonHeight: 30,
                        buttonWidth: 100,
                        buttonColor: Colors.green,
                        buttonText: "SAVE",
                        fontSize: 10,
                        onPressed: () {})
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
