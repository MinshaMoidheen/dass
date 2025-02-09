import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mentalhealth/utilities/customtextfield.dart';


class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _resetPassword() async {
    try {
      await _auth.sendPasswordResetEmail(email: _emailController.text.trim());
      // Display a success message to the user
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Password Reset"),
            content: Text("Password reset email sent. Check your inbox."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Display an error message to the user
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text("Failed to send password reset email. ${e.toString()}"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.lightBlue.shade900 ,

        title: Text("Forgot Password",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/img/reset.png'),
              CustomTextFormField(
                style: TextStyle(color: Colors.white),

                controller: _emailController,
                hintText: "Email",
                type: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              InkWell(
                  onTap:  _resetPassword,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue.shade900,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Reset Password",
                        style: TextStyle(color: Colors.white),),
                      ),
                    ),height: 40,
                  width: 150,))


            ],
          ),
        ),
      ),
    );
  }
}