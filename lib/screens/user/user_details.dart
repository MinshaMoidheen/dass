import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentalhealth/common/home.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:flutter/services.dart';
import 'package:mentalhealth/utilities/validator.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid.dart';

import '../../common/formborders.dart';


class UserDetails extends StatefulWidget {
  final Map? data;
  var email;
  var password;

UserDetails({super.key,this.data,this.email,this.password});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  var v1;
  var uuid=Uuid();

  String?url;

  @override
  void initState() {

    v1=uuid.v1();
    super.initState();
  }

  final _regKey = GlobalKey<FormState>();
  String selectedGender= '';
  TextEditingController _nameController=TextEditingController();
  TextEditingController _dobController=TextEditingController();
  TextEditingController _ageController=TextEditingController();
  TextEditingController _cityController=TextEditingController();
  TextEditingController _stateController=TextEditingController();
  TextEditingController _occupationController=TextEditingController();
  TextEditingController _addressController=TextEditingController();
  TextEditingController _mobileController=TextEditingController();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dobController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Form(
          key: _regKey,
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  MyText(
                    "Register New Patient here..",
                    txtColor: Colors.black,
                    fontSize: 18,
                    fw: FontWeight.w700,
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  //
                  // Center(
                  //   child: CircleAvatar(
                  //     radius: 33,
                  //     child: GestureDetector(
                  //       onTap: () {
                  //         showImage();
                  //       },
                  //       child: Center(
                  //         child: _image != null
                  //             ? Container(
                  //           height: 150,
                  //           width: 150,
                  //           decoration: BoxDecoration(
                  //               color: Colors.red,
                  //               shape: BoxShape.circle,
                  //               image: DecorationImage(
                  //                   fit: BoxFit.cover,
                  //                   image:
                  //                   FileImage(File(_image!.path)))),
                  //         )
                  //             : Container(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Icon(
                  //                 Icons.upload_file,
                  //                 size: 20,
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _emailController,
                      validator:(value){
                        return Validator.validateEmail(value);
                      },
                      decoration: InputDecoration(
                          hintText: "Email",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width:300, // set your desired width,
                    padding: EdgeInsets.symmetric(horizontal: 1),// set your desired horizontal padding),
                    decoration: BoxDecoration(
                      color: Colors.white, // set the background color to white
                      borderRadius: BorderRadius.circular(8.0), // set border radius if needed
                    ),
                    child: CustomTextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is Required";
                        }

                        if (value!.length < 6) {
                          return "Min 6 Characters Required";
                        }
                        return null; // return null if validation passes
                      },
                      controller: _passwordController,
                      enabledBorder: enabledBorder,
                      focusedBorder: focusBorder,
                      hintStyle: hintStyle,
                      errorStyle: errorStyle,
                      errorBorder: errBorder,
                      obscureText: true,
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 80, // Set the desired height
                    width: 300, // Use double.infinity to take the full width
                    color: Colors.white, // Set the background color to white
                    child: CustomTextFormField(
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
                      focusedBorder: focusBorder,
                      hintStyle: hintStyle,
                      errorStyle: errorStyle,
                      errorBorder: errBorder,
                      obscureText: true,
                      hintText: "Confirm Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _nameController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "Name is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Name",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _dobController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "DOB is required";
                        }
                      },
                      onTap: () {
                        _selectDate(context);
                      },
                      decoration: InputDecoration(
                        hintText: "DOB",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _ageController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "Age is required";
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Age",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio<String>(
                              value: "Male",
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value!;
                                });
                              },
                            ),
                            Text("Male"),
                            Radio<String>(
                              value: "Female",
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value!;
                                });
                              },
                            ),
                            Text("Female"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (selectedGender.isEmpty)
                    Text(
                      "Please select a gender",
                      style: TextStyle(color: Colors.red),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _cityController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "City is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "City",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _stateController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "State is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "State",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _occupationController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "Occupation is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Occupation",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _addressController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "Address is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Address",
                          enabledBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder:  OutlineInputBorder(borderSide:BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                          hintStyle: TextStyle(color:Colors.grey[500])
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _mobileController,
                      validator: (value) {

                        if (value!.isEmpty) {
                          return "Mobile is required";
                        }

                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        prefixText: '+91 ',
                        hintText: "Mobile",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  MaterialButton(onPressed:() async{

                    if (_regKey.currentState!.validate() ) {
                      if (_regKey.currentState!.validate()) {
                        try {

                          FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                          ).then((user) {
                            FirebaseFirestore.instance.collection('Login').doc(user.user!.uid).set({
                              'uid': user.user!.uid,
                              'name': _nameController.text.trim(),
                              'email': _emailController.text.trim(),
                              'password': _passwordController.text.trim(),
                              'status': 1,
                              'type': "patient",
                              'date': DateTime.now(),
                            }).then((value) {
                              FirebaseFirestore.instance.collection("patient").doc(user.user!.uid).set({
                                'uid': user.user!.uid,
                                'name': _nameController.text,
                                'dob': _dobController.text,
                                'age': _ageController.text,
                                'city': _cityController.text,
                                'gender': selectedGender,
                                'state': _stateController.text,
                                'occupation': _occupationController.text,
                                'address': _addressController.text,
                                'mobile': _mobileController.text,
                                'email': _emailController.text,
                                'password': _passwordController.text,
                                'status': 1,
                                'createdAt': DateTime.now(),
                                'usertype': "patient",
                              }).then((value) {
                                showsnackbar("Registered Successfully!");
                                Navigator.pop(context);
                              }).catchError((e) => showsnackbar("Registration Failed!"));
                            }).catchError((e) => showsnackbar("Registration Failed!"));
                          }).catchError((e) {
                            print('Authentication Error: $e');
                            showsnackbar("Authentication Failed!");
                          });
                        } catch (e) {
                          print('Error: $e');
                          showsnackbar("Registration Failed! Error: $e");
                        }
                      }





                    }


                  },
                    color: Colors.lightBlue.shade900,
                    child: Text("Submit",style:TextStyle(color:Colors.white),),),
                  SizedBox(height: 15,),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          "Already have an account?",
                          txtColor: Colors.black,
                          fontSize: 16,
                          fw: FontWeight.w700,
                        ),

                        InkWell(
                          onTap: (){

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LoginPage()));
                          },
                          child: MyText(
                            "Login",
                            txtColor: Colors.black,
                            fontSize: 16,

                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  _imagefromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
    Navigator.pop(context);
  }

  _imagefromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
    Navigator.pop(context);
  }

  showImage() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Ink(
                      decoration: ShapeDecoration(
                        color: Colors.pink,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _imagefromCamera();
                        },
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    Text("Camera")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Ink(
                      decoration: ShapeDecoration(
                        color: Colors.pink,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _imagefromGallery();
                        },
                        icon: Icon(Icons.photo),
                      ),
                    ),
                    Text("Gallery")
                  ],
                ),
              ],
            ),
          );
        });
  }

  void showsnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(value))
    );
  }

}