import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/screens/dcotor/doctor_homepage.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:flutter/services.dart';
import 'package:mentalhealth/utilities/validator.dart';
import 'package:uuid/uuid.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
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

  File? pickedFile;
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

  String? url;
  Future<void> pickPDF() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result != null) {
      setState(() {
        pickedFile = File(result.files.single.path!);
        print(pickedFile);
      });
    }
  }

  Future<void> uploadsPDF() async {
    try {
      if (pickedFile == null) {
        print('No file picked');
        return;
      }

      // Upload PDF to Storage
      var storageRef =
      FirebaseStorage.instance.ref().child('license/pdfFile.pdf');
      await storageRef.putFile(pickedFile!);

      // Get Download URL
      String downloadURL = await storageRef.getDownloadURL();

      _register(downloadURL);

      print('PDF uploaded and URL stored successfully');
    } catch (e) {
      print('Error: $e');
      // Handle the error (e.g., show a Snackbar)
    }
  }

  _register(String pdfurl) async {
    print(_image?.path);

    try {
      var filename = DateTime.now();
      if (_image == null || File(_image!.path) == null) {
        // Image not selected
        url = ""; // Set default value for imgurl
      } else {
        // Image selected, upload image to Storage
        var ref = FirebaseStorage.instance.ref().child('doctors/$filename');
        UploadTask utask = ref.putFile(File(_image!.path));
        await utask.then((res) async {
          url = (await ref.getDownloadURL()).toString();
        });
      }

      // Create user and save data
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      )
          .then((user) async {
        await FirebaseFirestore.instance.collection('Login').doc(user.user!.uid).set({
          'uid': user.user!.uid,
          'name': _fullnameController.text.trim(),
          'email': _emailController.text.trim(),
          'password': _passwordController.text.trim(),
          'status': 1,
          'type': "doctor",
          'date': DateTime.now(),
        });

        await FirebaseFirestore.instance.collection("doctor").doc(user.user!.uid).set({
          'uid': user.user!.uid,
          'fullname': _fullnameController.text,
          'address': _addressController.text,
          'phno': _mobileController.text,
          'institution': _institutionController.text,
          'licence': _licenseController.text,
          'licensepdf': pdfurl,
          'imgurl': url,
          'qualification': educationalValue,
          'type': selectedValue,
          'email': _emailController.text,
          'password': _passwordController.text,
          'status': 1,
          'createdAt': DateTime.now(),
          'usertype': 'doctor',
          'updates': _addressController.text,
          "officename": _officename.text,
          "location": _locationController.text,
          "workinghrs": _workhrController.text,
          "experience": _expController.text,
        });

        showsnackbar("Registered Successfully!");
        Navigator.pop(context);
      }).catchError((e) {
        print('Error during registration: $e');
        showsnackbar("Registration Failed!");
      });
    } catch (e) {
      print('Error: $e');
      showsnackbar("Error during registration: $e");
    }
  }


  String? type;

  var v1;
  var uuid = Uuid();
  @override
  void initState() {
    v1 = uuid.v1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Form(
          key: _regKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  MyText(
                    "Register New Doctor here..",
                    txtColor: Colors.black,
                    fontSize: 18,
                    fw: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: CircleAvatar(
                      radius: 33,
                      child: GestureDetector(
                        onTap: () {
                          showImage();
                        },
                        child: Center(
                          child: _image != null
                              ? Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              FileImage(File(_image!.path)))),
                                )
                              : Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.upload_file,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        return Validator.validateEmail(value);
                      },
                      decoration: InputDecoration(
                          hintText: "Email",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300, // set your desired width,
                    padding: EdgeInsets.symmetric(
                        horizontal: 1), // set your desired horizontal padding),
                    decoration: BoxDecoration(
                      color: Colors.white, // set the background color to white
                      borderRadius: BorderRadius.circular(
                          8.0), // set border radius if needed
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "FullName",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _addressController,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return "updates is required";
                      //   }
                      // },
                      decoration: InputDecoration(
                          hintText: "Your Updates",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _expController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "experience is required";
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "experience ",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _officename,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "this is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Office Name",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _locationController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "location is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Office location",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: _workhrController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "this is required";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Working hrs(10-4)",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors
                              .black), // Add a border for styling (optional)
                    ),
                    child: DropdownButton<String>(
                      value:
                          selectedValue, // Initially selected value (set this in your state)
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
                      border: Border.all(
                          color: Colors
                              .black), // Add a border for styling (optional)
                    ),
                    child: DropdownButton<String>(
                      value:
                          educationalValue, // Initially selected value (set this in your state)
                      onChanged: (newValue) {
                        setState(() {
                          educationalValue = newValue!;
                        });
                      },
                      items: <String>['Ph.D', 'Psy.D', 'M.A']
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your institution";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Name of institution",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "License number is required";
                        }
                      },
                      //keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "License Number",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      onTap: () {
                        pickPDF();
                      },
                      controller: _fileController,
                      // validator:(value){
                      //   if(value!.isEmpty)
                      //   {
                      //     return " File is empty";
                      //   }
                      // },
                      decoration: InputDecoration(
                          hintText: "Upload you License ",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500])),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  MaterialButton(
                    onPressed: () {
                      if (_regKey.currentState!.validate()) {
                        uploadsPDF();
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
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

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
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
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

                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showsnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
  }
}
