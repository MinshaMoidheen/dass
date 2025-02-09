import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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


class AddPatient extends StatefulWidget {
  final Map? data;
  var email;
  var password;

  AddPatient({super.key,this.data,this.email,this.password});

  @override
  State<AddPatient> createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {

  var v1;
  var uuid=Uuid();

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
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Add Patient",style: TextStyle(color: Colors.white),),
      ),
      body:SafeArea(
        child: Form(
          key: _regKey,
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 15,),

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

                  MaterialButton(onPressed:(){

                    if (_regKey.currentState!.validate() ) {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(email:_emailController.text.trim(),
                          password: _passwordController.text.trim()).then((user) {
                        FirebaseFirestore.instance.collection('Login').doc(user.user!.uid).set({
                          'uid': user.user!.uid,
                          'name':_nameController.text.trim(),
                          'email': _emailController.text.trim(),
                          'password': _passwordController.text.trim(),

                          'status' :1,
                          'type':"patient",

                          'date': DateTime.now()
                        }).then((value) {
                          FirebaseFirestore.instance.collection("patient").doc(user.user!.uid).set({
                            'uid': user.user!.uid,
                            'name':_nameController.text,
                            'dob':_dobController.text,
                            'age':_ageController.text,
                            'city':_cityController.text,
                            'gender':selectedGender,
                            'state':_stateController.text,
                            'occupation':_occupationController.text,
                            'address':_addressController.text,
                            'mobile':_mobileController.text,
                            'email':_emailController.text,
                            'password':_passwordController.text,
                            'status':1,
                            'createdAt':DateTime.now(),

                            'usertype':"patient"

                          }).then((value)

                          {
                            showsnackbar("Registered Successfully!");
                            Navigator.pop(context);
                          }).catchError((e)=>showsnackbar("Registration Failed!"));
                        }).catchError((e)=>showsnackbar("Registration Failed!"));
                      }).catchError((e)=>showsnackbar("Authentication Failed!"));

                    }


                  },
                    color: Colors.lightBlue.shade900,
                    child: Text("Submit",style:TextStyle(color:Colors.white),),),

                  SizedBox(height: 25,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void showsnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(value))
    );
  }

}