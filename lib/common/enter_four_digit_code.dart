import 'package:flutter/material.dart';
import 'package:mentalhealth/common/reset_password.dart';
import 'package:mentalhealth/utilities/mybutton.dart';
import 'package:mentalhealth/utilities/mytext.dart';

class enterfourdigitcode extends StatefulWidget {
  const enterfourdigitcode({super.key});

  @override
  State<enterfourdigitcode> createState() => _enterfourdigitcodeState();
}

class _enterfourdigitcodeState extends State<enterfourdigitcode> {
  TextEditingController _otpController = TextEditingController();
  final _regKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(''),
        ),
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
                      height: 20,
                    ),
                    MyText(
                      "Enter 4 Digit Code",
                      txtColor: Colors.black,
                      fontSize: 20,
                      fw: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyText('Enter the 4 digit code that you recieved on your email.',
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                TextFormField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: InputDecoration(
                    labelText: '4-Digit OTP',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.length != 4) {
                      return 'Please enter a valid 4-digit OTP';
                    }
                    // You can add more OTP validation logic here.
                  },
                ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: MyButton(
                        height: 45,
                        width: 250,
                        onTap: () {
                          if (_regKey.currentState!.validate()) {
                            // OTP validation successful, navigate to the next screen
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                // Replace NextScreen with the actual next screen/widget
                                return resetpassword();
                              },
                            ));
                          }

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
