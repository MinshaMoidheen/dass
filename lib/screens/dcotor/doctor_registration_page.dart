import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/screens/dcotor/doctor_details.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/mybutton.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:mentalhealth/utilities/validator.dart';

class DoctorRegistrationPage extends StatefulWidget {
  const DoctorRegistrationPage({super.key});

  @override
  State<DoctorRegistrationPage> createState() => _DoctorRegistrationPageState();
}

class _DoctorRegistrationPageState extends State<DoctorRegistrationPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          "Hi Doctor",
                          txtColor: Colors.black,
                          fontSize: 18,
                          fw: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          validator: (value){

                            return Validator.validateEmail(value);
                          },
                          style: TextStyle(color: Colors.black87),

                          controller: _emailController,
                          hintText: "Email",
                          enabledBorder: enabledBorder,
                          focusedBorder:focusBorder,
                          hintStyle: hintStyle,
                          errorStyle: errorStyle,
                          errorBorder: errBorder,

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
                            controller: _passwordController,
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
                              if (value != _passwordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                            controller: _confirmpasswordController,
                            enabledBorder: enabledBorder,
                            focusedBorder:focusBorder,
                            hintStyle: hintStyle,
                            errorStyle: errorStyle,
                            errorBorder: errBorder,



                            obscureText: true,
                            hintText: " Confirm Password"),
                        Center(
                          child: MyButton(
                            height: 45,
                            width: 250,
                            onTap: () {
                              if (_regKey.currentState!.validate()) {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return DoctorDetails();
                                }));
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: MyText(
                                    "Next",
                                    txtColor: Colors.white,
                                    fw: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                      ],
                    ),
                  ),

                ],
              ))),
    );
  }
}
