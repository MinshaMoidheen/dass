

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/forgotpage.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/common/home.dart';
import 'package:mentalhealth/constants/colors.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/screens/admin/adminhome.dart';
import 'package:mentalhealth/screens/dcotor/doctor_details.dart';
import 'package:mentalhealth/screens/dcotor/doctor_homepage.dart';
import 'package:mentalhealth/screens/user/forgotpass.dart';
import 'package:mentalhealth/screens/user/user_details.dart';
import 'package:mentalhealth/screens/user/user_registration_page.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/footer.dart';
import 'package:mentalhealth/utilities/my_textfield.dart';
import 'package:mentalhealth/utilities/mybutton.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:mentalhealth/utilities/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _loginkey = GlobalKey<FormState>();
  bool checkval = false;

  BtnStyle btnStyle = BtnStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // appBar: AppBar(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          //decoration: BoxDecoration(
            //color: Colors.blueAccent
         // ),
          padding: EdgeInsets.all(20),
          child: Form(
            key: _loginkey,
            child:CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(bottom:30),
                        child: Image.asset('assets/img/mentalhealthlogo.png',height: 120,width: 250,

                        ),
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
                      GestureDetector(
                        onTap:(){

                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return ForgotPasswordScreen();
                          }));

                        },
                        child: MyText(
                          "Forgot password ?",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MyButton(
                        height: 45,
                        width: 250,
                        onTap: () async {
                          if (_loginkey.currentState!.validate()) {
                            try {
                              if (_emailController.text == "admin@gmail.com" && _passwordController.text == "12345678") {
                                // Admin login logic
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdminHome(),
                                  ),
                                );
                              } else {
                                // Regular user login logic
                                await FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                ).then((user) async {
                                  final loginData = await FirebaseFirestore.instance.collection('Login').doc(user.user!.uid).get();

                                  if (loginData.data() != null && loginData.data()!['status'] == 1) {
                                    if (loginData.data()!['type'] == 'doctor') {
                                      final doctorData = await FirebaseFirestore.instance.collection('doctor').doc(loginData.data()!['uid']).get();
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DoctorHomepage(
                                            name:doctorData['fullname'] ,
                                            imgurl:doctorData['imgurl'],
                                            type:  doctorData['type'] ,
                                            officename: doctorData['officename'] ,
                                            address: doctorData['address'],
                                            mobile: doctorData['phno'],
                                            uid:  doctorData['uid'],
                                            exp:  doctorData['experience'],
                                            institution: doctorData['institution'],
                                            licence: doctorData['licence'],
                                            location:doctorData['location'],
                                            qualification: doctorData['qualification'],
                                            updates: doctorData['updates'],
                                            workhrs:doctorData['workinghrs'],
                                          ),
                                        ),
                                      );
                                    } else if (loginData.data()!['type'] == 'patient'&& loginData.data()!['status'] == 1) {
                                      final patientData = await FirebaseFirestore.instance.collection('patient').doc(loginData.data()!['uid']).get();
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomePage(
                                            imgurl:patientData['imageurl'],
                                            uid: patientData['uid'],
                                            name:patientData['name'] ,
                                            email: patientData['email'],
                                            dob:patientData['dob'],
                                            age: patientData['age'],
                                            gender: patientData['gender'],
                                            city: patientData['city'],
                                            state: patientData['state'],
                                            occupation: patientData['occupation'],
                                            address:patientData['address'],
                                            mobile:patientData['mobile'],
                                          ),
                                        ),
                                      );
                                    }
                                  } else {
                                    showsnackbar("User is not active");
                                  }
                                });
                              }
                            } catch (e) {
                              // Handle the error here
                              print("Error: $e");

                              var err=e.toString().split("]")[1];

                              // Display the error using ScaffoldMessenger
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text("Error: $err"),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            }


                          }
                        },
                        child: MyText(
                          "Login",
                          txtColor: Colors.white,
                          fw: FontWeight.bold,
                        ),),
                      SizedBox(
                        height: 40,
                      ),
                      FooterPage(
                        data1: "Create an Account ?",
                        data2: "Signup",
                        onTap: () {


                        },
                      ),

                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DoctorDetails()));
                            },
                            child: Text("Doctor",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UserDetails()));
                            },
                            child: Text("Patient",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          )),
    );
  }

  void showsnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(value))
        );
    }
}