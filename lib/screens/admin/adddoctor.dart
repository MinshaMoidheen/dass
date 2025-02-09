import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/screens/dcotor/doctor_homepage.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:flutter/services.dart';
import 'package:mentalhealth/utilities/validator.dart';
import 'package:uuid/uuid.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({super.key});

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  final _regKey = GlobalKey<FormState>();
  TextEditingController _graduationYearController = TextEditingController();
  String selectedValue = 'Psychologist';
  String educationalValue = 'Ph.D';
  String selectedYear = DateTime.now().year.toString();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _fullnameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _institutionController = TextEditingController();
  TextEditingController _licenseController = TextEditingController();
  TextEditingController _fileController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _workhrController = TextEditingController();
  TextEditingController _officename = TextEditingController();
  TextEditingController _expController = TextEditingController();







  String? type;


  var v1;
  var uuid=Uuid();
  @override
  void initState() {
    v1=uuid.v1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Add Doctor",style: TextStyle(color: Colors.white),),
      ),
      body:SafeArea(
        child:Form(
          key: _regKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
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
                    width:300,// set your desired width,
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
                      controller: _fullnameController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "Name is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "FullName",
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
                  ), Container(
                    width: 300,
                    child: TextFormField(
                      controller: _addressController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "updates is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Your Updates",
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
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _expController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "experience is required";
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "experience ",
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
                  SizedBox(height: 10,),

                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _officename,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "this is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Office Name",
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
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _locationController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "location is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Office location",
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
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _workhrController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "this is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Working hrs(10-4)",
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black), // Add a border for styling (optional)
                    ),
                    child: DropdownButton<String>(
                      value: selectedValue, // Initially selected value (set this in your state)
                      onChanged: (newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: <String>['Psychologist', 'Psychiatrist']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
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
                        if (value.length != 10) {
                          return "Invalid Mobile number";
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
                  MyText(
                    "Educational details",
                    fw: FontWeight.w600,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black), // Add a border for styling (optional)
                    ),
                    child: DropdownButton<String>(
                      value: educationalValue, // Initially selected value (set this in your state)
                      onChanged: (newValue) {
                        setState(() {
                          educationalValue = newValue!;
                        });
                      },
                      items: <String>['Ph.D', 'Psy.D','M.A']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _institutionController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "Please enter your institution";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Name of institution",
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
                  // Container(
                  //   width: 300,
                  //   child: TextFormField(
                  //     controller: _graduationYearController,
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return "Graduation year is required";
                  //       }
                  //     },
                  //     decoration: InputDecoration(
                  //       hintText: "Graduation Year",
                  //       enabledBorder: const OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.black),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.grey.shade400),
                  //       ),
                  //       fillColor: Colors.white,
                  //       filled: true,
                  //       hintStyle: TextStyle(color: Colors.grey[500]),
                  //       suffixIcon: DropdownButton<String>(
                  //         value: selectedYear, // Initially selected year (set this in your state)
                  //         onChanged: (newValue) {
                  //           setState(() {
                  //             selectedYear = newValue!;
                  //             _graduationYearController.text = newValue; // Update the text in the TextFormField
                  //           });
                  //         },
                  //         items: List.generate(50, (index) {
                  //           int year = DateTime.now().year - 25 + index;
                  //           return DropdownMenuItem<String>(
                  //             value: year.toString(),
                  //             child: Text(year.toString()),
                  //           );
                  //         }),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  MyText(
                    "Professional Creadentials",
                    fw: FontWeight.w600,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _licenseController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return "License number is required";
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "License Number",
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
                      controller: _fileController,
                      validator:(value){
                        if(value!.isEmpty)
                        {
                          return " File is empty";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Upload you License ",
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

                  MaterialButton(onPressed:(){

                    if (_regKey.currentState!.validate() ) {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(email:_emailController.text.trim(),
                          password: _passwordController.text.trim()).then((user) {
                        FirebaseFirestore.instance.collection('Login').doc(user.user!.uid).set({
                          'uid': user.user!.uid,
                          'name':_fullnameController.text.trim(),
                          'email': _emailController.text.trim(),
                          'password': _passwordController.text.trim(),

                          'status' :1,
                          'type':"doctor",

                          'date': DateTime.now()
                        }).then((value) {
                          FirebaseFirestore.instance.collection("doctor").doc(user.user!.uid).set({
                            'uid': user.user!.uid,
                            'fullname':_fullnameController.text,
                            'address':_addressController.text,
                            'phno':_mobileController.text,
                            'institution':_institutionController.text,

                            'licence':_licenseController.text,
                            'file':_fileController.text,
                            'qualification':educationalValue,
                            'type':selectedValue,
                            'email':_emailController.text,
                            'password':_passwordController.text,
                            'status':1,
                            'createdAt':DateTime.now(),
                            'usertype':'doctor',
                            'updates':_addressController.text,
                            "officename":_officename.text,
                            "location":_locationController.text,
                            "workinghrs":_workhrController.text,
                            "experience":_expController.text,


                          }).then((value)

                          {
                            showsnackbar("Registered Successfully!");
                            Navigator.pop(context);
                          }).catchError((e)=>showsnackbar("Registration Failed!"));
                        }).catchError((e)=>showsnackbar("Registration Failed!"));
                      });

                    }

                    // if (_regKey.currentState!.validate()) {
                    //   FirebaseAuth.instance
                    //       .createUserWithEmailAndPassword(
                    //       email: _emailController.text,
                    //       password: _passwordController.text)
                    //       .then((value) {
                    //     FirebaseFirestore.instance
                    //         .collection('doctor')
                    //         .doc(value.user!.uid)
                    //         .set({
                    //       'fullname':_fullnameController.text,
                    //       'address':_addressController.text,
                    //       'phno':_mobileController.text,
                    //       'institution':_institutionController.text,
                    //       'graduation':_graduationYearController.text,
                    //       'licence':_licenseController.text,
                    //       'file':_fileController.text,
                    //       'qualification':educationalValue,
                    //     'type':selectedValue,
                    //       'email':_emailController.text,
                    //       'password':_passwordController.text,
                    //       'status':1,
                    //       'createdAt':DateTime.now(),
                    //       'usertype':'doctor',
                    //       "id":v1,
                    //
                    //     });
                    //   }).then((value) {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(
                    //         content: Text('Registerd succesfully'),
                    //       ),
                    //     );
                    //     Navigator.pushAndRemoveUntil(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => LoginPage()),
                    //             (route) =>false);
                    //   });
                    //
                    //
                    //
                    // }
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
