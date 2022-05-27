// ignore_for_file: deprecated_member_use

import 'package:amana_bi_bazar/widgets/my_elevated_button.dart';
import 'package:amana_bi_bazar/widgets/my_flat_icons.dart';
import 'package:amana_bi_bazar/widgets/my_other_textformfield.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _organizationController = TextEditingController();

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
                        Icons.document_scanner_outlined,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MyText(text: "PERSONAL INFORMATION", textSize: 16),
                ],
              ),
              Container(
                  height: 25,
                  width: 33,
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    textColor: Colors.black,
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1),
                    onPressed: () {},
                  )),
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
                  text: "First Name",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _firstNameController,
                  textInputType: TextInputType.name,
                  hintText: "First Name",
                ),
                MyText(
                  text: "Required",
                  textSize: 12,
                  textColor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: "Last Name",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _lastNameController,
                  textInputType: TextInputType.name,
                  hintText: "Last Name",
                ),
                SizedBox(
                  height: 30,
                ),
                MyText(
                  text: "Contact Number",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _phoneController,
                  textInputType: TextInputType.phone,
                  hintText: "Phone Number",
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [],
                ),
                MyText(
                  text: "Occupation",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _occupationController,
                  textInputType: TextInputType.text,
                  hintText: "Occupation",
                ),
                SizedBox(
                  height: 30,
                ),
                MyText(
                  text: "Organization",
                  textSize: 14,
                ),
                MyOtherTextFormField(
                  controller: _organizationController,
                  textInputType: TextInputType.phone,
                  hintText: "Enter your organization",
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
