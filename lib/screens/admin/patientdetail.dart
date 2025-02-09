import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:uuid/uuid.dart';

class PatientDetail extends StatefulWidget {
  var name;
  var uid;
  var email;
  var phno;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  PatientDetail({this.name,this.uid,this.email,this.phno,this.address,this.occupation,this.state,this.city,this.age,this.gender,this.dob});




  @override
  _PatientDetailState createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Patient Detail",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: 20,),

                Row(
                  children: [
                    Text(" Name: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.name,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Email: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.email,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" City: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.city,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Number: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.phno,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Age: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.age,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Gender: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.gender,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" DOB: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.dob
                      ,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                )
                ,
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" State: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.state,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Occupation: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.occupation,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),

    );
  }



}