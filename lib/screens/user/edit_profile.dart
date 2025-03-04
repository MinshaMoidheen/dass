import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';


class EditDetails extends StatefulWidget {

  var name;
  var phno;
  var uid;
  var age;
  var city;
  var state;
  var occupation;
  var address;

  EditDetails({Key? key,this.phno,this.name,this.uid,this.age,this.city,this.state,this.occupation,this.address}) : super(key: key);

  @override
  _EditDetailsState createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {

  String? imggurl;
  var _editkey = new GlobalKey<FormState>();

  var url;

  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _occupationController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    _nameController.text=widget.name;
    _phController.text=widget.phno;
    _stateController.text=widget.state;
    _ageController.text=widget.age;
    _cityController.text=widget.city;
    _occupationController.text=widget.occupation;
    _addressController.text=widget.address;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade900,

        child: Center(
          child: Container(
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(25)
            ),
            height: 650,
            width: 335,
            child:Card(
              elevation: 10,
              child: Container(



                child: Form(
                  key:_editkey ,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Update your profile here!!",

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _nameController,
                            hintText: 'Enter your name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a name';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _nameController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _phController,
                            hintText: 'Enter your PhNo',
                            validator: (value) {
                              if (value !.isEmpty ) {
                                return 'Please enter your phno';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _phController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _ageController,
                            hintText: 'Enter your age',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your age';
                              }
                              return null;
                            },

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _ageController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _cityController,
                            hintText: 'Enter your city',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a city';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _cityController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _stateController,
                            hintText: 'Enter your state',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a state';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _stateController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _occupationController,
                            hintText: 'Enter your occupation',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a occupation';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _occupationController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _addressController,
                            hintText: 'Enter your address',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a address';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _addressController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _phController,
                            hintText: 'Enter your mobile',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your mobile';
                              }
                              return null;
                            },
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),

                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _phController.clear();
                              },
                            ),
                          ),
                        ),

                        // Text("Upload Image"),
                        //
                        //
                        // Center(
                        //   child: CircleAvatar(
                        //     radius: 33,
                        //     child: GestureDetector(
                        //       onTap: () {
                        //         showImage();
                        //
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
                        //                   image: FileImage(File(_image!.path)))),
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
                        SizedBox(
                          height: 80,
                        ),




                        GestureDetector(
                          onTap: (){

                            // if (_editkey.currentState!.validate()) {
                            //   var fileExtension = path.extension(_image!.path);
                            //   print(fileExtension);
                            //
                            //   String fileName =DateTime.now().toString();
                            //
                            //   var ref=FirebaseStorage.instance.ref().child('patient/$filename');
                            //   UploadTask utask=ref.putFile(File(_image!.path));
                            //   utask.then((res)async{
                            //     url=(await ref.getDownloadURL()).toString();
                            //   }).then((value){
                            //     FirebaseFirestore.instance.collection('patient').doc(widget.uid).update({
                            //
                            //           'name': _nameController.text,
                            //           'phone': _phController.text,
                            //           'age': _ageController.text,
                            //           'city': _cityController.text,
                            //           'state': _stateController.text,
                            //           'occupation': _occupationController.text,
                            //           'address': _addressController.text,
                            //       'imageurl': url,
                            //
                            //
                            //
                            //     }).then((value){
                            //       showsnackbar("Successfully Added!");
                            //       Navigator.pop(context);
                            //     });// common code for data saving,updating
                            //
                            //   } );
                            //
                            // }

                            if (_editkey.currentState!.validate()) {

                              FirebaseFirestore.instance.collection('patient').doc(widget.uid).update({

                                'name': _nameController.text,
                                'phone': _phController.text,
                                'age': _ageController.text,
                                'city': _cityController.text,
                                'state': _stateController.text,
                                'occupation': _occupationController.text,
                                'address': _addressController.text,

                              }).then((value)

                              {

                                Navigator.pop(context);
                                showsnackbar("Updated Successfully!");
                              }).catchError((e)=>showsnackbar("Registration Failed!"));


                            }
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  showsnackbar(String msg)
  {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: Colors.cyan,

        )
    );
  }

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




}
