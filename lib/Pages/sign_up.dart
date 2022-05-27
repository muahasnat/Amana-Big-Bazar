import 'package:amana_bi_bazar/widgets/my_elevated_button.dart';
import 'package:amana_bi_bazar/widgets/my_flat_icons.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:amana_bi_bazar/widgets/my_text_button.dart';
import 'package:amana_bi_bazar/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value1 = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: MyText(
          text: "Sign Up",
          textSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/Logo.jpg",
                    width: 350.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Your Name",
                        textSize: 14,
                      ),
                      MyTextFormField(
                        controller: _nameController,
                        textInputType: TextInputType.name,
                        prefixIcon: Icons.person,
                        hintText: "your name",
                      ),
                      MyText(
                        text: "Please enter your Name",
                        textSize: 12,
                        textColor: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyText(
                        text: "Phone Number",
                        textSize: 14,
                      ),
                      MyTextFormField(
                        controller: _phoneController,
                        textInputType: TextInputType.phone,
                        prefixIcon: Icons.phone,
                        hintText: "phone number",
                      ),
                      MyText(
                        text: "Phone number should be 11 digit number",
                        textSize: 12,
                        textColor: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyText(text: "Password", textSize: 14),
                      MyTextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        textInputType: TextInputType.visiblePassword,
                        prefixIcon: Icons.lock,
                        hintText: "password",
                      ),
                      MyText(
                        text: "Please enter your passwprd",
                        textSize: 12,
                        textColor: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyText(text: "Confirm Password", textSize: 14),
                      MyTextFormField(
                        obscureText: true,
                        controller: _confirmpasswordController,
                        textInputType: TextInputType.visiblePassword,
                        prefixIcon: Icons.lock,
                        hintText: "password",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          side: BorderSide(color: Colors.red),
                          value: value1,
                          onChanged: (value1) {
                            setState(() {
                              value1 = value1;
                            });
                          },
                        ),
                        MyText(
                            text: "By sign up,you agree to our", textSize: 10),
                      ],
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        MyTextButtonn(
                            buttonText: "Terms & Conditions",
                            onPressed: () {},
                            fontSize: 10,
                            textColor: Colors.green),
                        MyText(
                          text: "|",
                          textSize: 10,
                          textColor: Colors.green,
                        ),
                        MyTextButtonn(
                            buttonText: "Privacy Policy",
                            onPressed: () {},
                            fontSize: 10,
                            textColor: Colors.green),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MyButton(
                    buttonHeight: 45,
                    buttonWidth: double.infinity,
                    buttonColor: Colors.green,
                    buttonText: "SIGN UP",
                    fontSize: 18,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: MyText(
                          text: "Already have an account?",
                          textSize: 14,
                        ),
                      ),
                      Container(
                          child: MyTextButtonn(
                              buttonText: "Sign In",
                              onPressed: () {},
                              fontSize: 16,
                              textColor: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
