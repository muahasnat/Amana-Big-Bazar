import 'package:amana_bi_bazar/widgets/my_elevated_button.dart';
import 'package:amana_bi_bazar/widgets/my_text.dart';
import 'package:amana_bi_bazar/widgets/my_text_button.dart';

import 'package:amana_bi_bazar/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: MyText(
          text: "Login",
          textSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              MyText(
                text: "Phone Number",
                textSize: 14,
              ),
              MyTextFormField(
                controller: _phoneController,
                textInputType: TextInputType.phone,
                prefixIcon: Icons.phone,
                hintText: "Your Phone Number",
              ),
              SizedBox(
                height: 30,
              ),
              MyText(text: "Password", textSize: 14),
              MyTextFormField(
                obscureText: true,
                controller: _passwordController,
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock,
                hintText: "Your Password",
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                  buttonHeight: 45,
                  buttonWidth: double.infinity,
                  buttonColor: Colors.green,
                  buttonText: "LOGIN",
                  fontSize: 18,
                  onPressed: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        side: BorderSide(color: Colors.red),
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      MyText(text: "Remember Me", textSize: 14)
                    ],
                  ),
                  MyTextButtonn(
                      buttonText: "Forgot Password?",
                      onPressed: () {},
                      fontSize: 14,
                      textColor: Colors.green)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: MyText(
                        text: "Don\'t have an account?",
                        textSize: 14,
                      ),
                    ),
                    Container(
                        child: MyTextButtonn(
                            buttonText: "Sign Up",
                            onPressed: () {},
                            fontSize: 16,
                            textColor: Colors.green))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(text: "Or, Login with", textSize: 20),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                  buttonHeight: 45,
                  buttonWidth: double.infinity,
                  buttonColor: Colors.blue[900],
                  buttonText: "Facebook",
                  fontSize: 18,
                  onPressed: () {}),
              SizedBox(
                height: 20,
              ),
              MyButton(
                  buttonHeight: 45,
                  buttonWidth: double.infinity,
                  buttonColor: Colors.red,
                  buttonText: "Google",
                  fontSize: 18,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
