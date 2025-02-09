import 'package:flutter/material.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/mybutton.dart';
import 'package:mentalhealth/utilities/mytext.dart';

class resetpassword extends StatefulWidget {
  const resetpassword({super.key});

  @override
  State<resetpassword> createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  TextEditingController _resetpasswordController = TextEditingController();
  TextEditingController _resetconfirmpasswordController = TextEditingController();
  final _regKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(25),
        child: Form(
          key: _regKey,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    MyText(
                      "Reset Password",
                      txtColor: Colors.black,
                      fontSize: 20,
                      fw: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyText('Set the new password for your account so you can login and access all the features.',
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is Required";
                          }

                          if (value!.length<6) {
                            return "Min 6 Characters Required";
                          }
                        },
                        controller: _resetpasswordController,
                        enabledBorder: enabledBorder,
                        focusedBorder:focusBorder,
                        hintStyle: hintStyle,
                        errorStyle: errorStyle,
                        errorBorder: errBorder,


                        obscureText: true,
                        hintText: "Password"),

                    CustomTextFormField(

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != _resetpasswordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        controller: _resetconfirmpasswordController,
                        enabledBorder: enabledBorder,
                        focusedBorder:focusBorder,
                        hintStyle: hintStyle,
                        errorStyle: errorStyle,
                        errorBorder: errBorder,



                        obscureText: true,
                        hintText: " Confirm Password"),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: MyButton(
                        height: 45,
                        width: 250,
                        onTap: () {
                        },
                        child: MyText(
                          "Continue",
                          txtColor: Colors.white,
                          fw: FontWeight.bold,
                        ),
                      ),
                    ),
                    // You can add more widgets here.
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
