import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';

class DocEdit extends StatefulWidget {

  var name;
  var officename;
  var address;
  var mobile;
  var uid;
  var exp;
  var institution;
  var location;
  var qualification;
  var type;
  var updates;
  var workhrs;

   DocEdit({Key? key,this.name,this.address,this.mobile,this.type,this.officename, this.uid,this.location,this.exp,this.updates,this.institution,this.qualification,this.workhrs});

  @override
  State<DocEdit> createState() => _DocEditState();
}

class _DocEditState extends State<DocEdit> {

  var _editkey = new GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _officenameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _expController = TextEditingController();
  TextEditingController _institutionController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _qualificationController = TextEditingController();
  TextEditingController _typeController = TextEditingController();
  TextEditingController _updatesController = TextEditingController();
  TextEditingController _workhrsController = TextEditingController();

  @override
  void initState() {
    _nameController.text=widget.name;
   _officenameController.text=widget.officename;
   _addressController.text=widget.address;
   _mobileController.text=widget.mobile;
   _expController.text=widget.exp;
   _institutionController.text=widget.institution;
   _locationController.text=widget.location;
   _qualificationController.text=widget.qualification;
   _typeController.text=widget.type;
   _updatesController.text=widget.updates;
   _workhrsController.text=widget.workhrs;

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
                            controller: _officenameController,
                            hintText: 'Enter your OfficeName',
                            validator: (value) {
                              if (value !.isEmpty ) {
                                return 'Please enter your OfficeName';
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
                                _officenameController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _addressController,
                            hintText: 'Enter your Address',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Address';
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
                            controller: _mobileController,
                            hintText: 'Enter your Mobile no.',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Mobile no.';
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
                                _mobileController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _expController,
                            hintText: 'Enter your Experience',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Experience';
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
                                _expController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _institutionController,
                            hintText: 'Enter your Institution',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Institution';
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
                                _institutionController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _locationController,
                            hintText: 'Enter your Location',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a location';
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
                                _locationController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _qualificationController,
                            hintText: 'Enter your qualification',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your qualification';
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
                                _qualificationController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _typeController,
                            hintText: 'Enter your type',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your type';
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
                                _typeController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _updatesController,
                            hintText: 'Enter your updates',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your updates';
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
                                _updatesController.clear();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CustomTextFormField(
                            controller: _workhrsController,
                            hintText: 'Enter your woringhours',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your workinghours';
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
                                _qualificationController.clear();
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
                        //
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
                            if (_editkey.currentState!.validate()) {

                              FirebaseFirestore.instance.collection('doctor').doc(widget.uid).update({

                                'fullname': _nameController.text,
                                'officename': _officenameController.text,
                                'address': _addressController.text,
                                'phno': _mobileController.text,
                                'experience': _expController.text,
                                'institution': _institutionController.text,
                                'location': _locationController.text,
                                'qualification': _qualificationController.text,
                                'type': _typeController.text,
                                'updates': _updatesController.text,
                                'workinghrs': _workhrsController.text,


                              }).then((value)

                              {
                                showsnackbar("Updated Successfully!");
                                Navigator.pop(context);

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
}
