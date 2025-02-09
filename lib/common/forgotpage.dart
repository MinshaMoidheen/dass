import 'package:flutter/material.dart';
import 'package:mentalhealth/common/enter_four_digit_code.dart';
import 'package:mentalhealth/utilities/mybutton.dart';
import 'package:mentalhealth/utilities/mytext.dart';

class forgotpage extends StatefulWidget {
  const forgotpage({Key? key}) : super(key: key);

  @override
  State<forgotpage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<forgotpage> {
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
                      "Forgot password",
                      txtColor: Colors.black,
                      fontSize: 20,
                      fw: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyText('Enter the e-mail associated with your account and we will send you a verification code.',
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText:" Email",border: OutlineInputBorder(),
                      ),
                      validator:(value){
                        if(value==null||value.isEmpty){
                          return"Please enter your E-mail";
                        }
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return enterfourdigitcode();
                            }));
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
