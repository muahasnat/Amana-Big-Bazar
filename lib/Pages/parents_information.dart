// ignore_for_file: deprecated_member_use

import 'package:amana_bi_bazar/widgets/my_elevated_button.dart';
import 'package:amana_bi_bazar/widgets/my_other_textformfield.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ParentsInformation extends StatefulWidget {
  const ParentsInformation({Key? key}) : super(key: key);

  @override
  State<ParentsInformation> createState() => _ParentsInformationState();
}

class _ParentsInformationState extends State<ParentsInformation> {
  final TextEditingController _fathersNameController = TextEditingController();
  final TextEditingController _mothersNameController = TextEditingController();
  final TextEditingController _fathersPhoneController = TextEditingController();
  final TextEditingController _mothersPhoneController = TextEditingController();

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
                        Icons.person_outlined,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MyText(text: "PARENT'S INFORMATION", textSize: 16),
                ],
              ),
              Container(
                  height: 20,
                  width: 33,
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
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
                Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(text: "Father's Name", textSize: 14),
                              MyOtherTextFormField(
                                  hintText: " Fathers Name",
                                  textInputType: TextInputType.name,
                                  controller: _fathersNameController)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(text: "Mother's Name", textSize: 14),
                              MyOtherTextFormField(
                                  hintText: " Mother's Name",
                                  textInputType: TextInputType.name,
                                  controller: _mothersNameController)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                  text: "Father's Phone Number", textSize: 14),
                              MyOtherTextFormField(
                                  hintText: " Fathers Phone Number",
                                  textInputType: TextInputType.number,
                                  controller: _fathersPhoneController)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                  text: "Mother's Phone Number", textSize: 14),
                              MyOtherTextFormField(
                                  hintText: "Mother's Phone Number",
                                  textInputType: TextInputType.number,
                                  controller: _mothersPhoneController)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
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
