import 'package:amana_bi_bazar/Pages/mailing_address.dart';
import 'package:amana_bi_bazar/Pages/parents_information.dart';
import 'package:amana_bi_bazar/Pages/personal_information.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:flutter/material.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back, color: Colors.black),
          title: MyText(
            text: "Basic Information",
            textSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                PersonalInformation(),
                ParentsInformation(),
                MailingAddress(),
              ],
            ),
          ),
        ));
  }
}
