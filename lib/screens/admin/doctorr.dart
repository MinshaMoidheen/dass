import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mentalhealth/screens/admin/pdf_screen.dart';
import 'package:path/path.dart' as path;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:uuid/uuid.dart';

class DoctorDetail extends StatefulWidget {
  var name;
  var uid;
  var email;
  var phno;

  var workhr;
var education;
var institue;
var licenceno;

  var updates;
  var exp;
  var office;
  var location;
  var type;

  var pdf;

  DoctorDetail({this.name,this.uid,this.email,this.phno,this.updates,this.type,this.location,this.exp,this.education
  ,this.institue,this.licenceno,this.office,this.workhr,this.pdf});




  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Doctor Detail",
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
                    Text(" Updates: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.updates,
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
                    Text(" Experience: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.exp,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Office: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.office,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Location: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.location
                      ,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                )
                ,
                SizedBox(height: 10,),



                Row(
                  children: [
                    Text(" Working Hours: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.workhr,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Type: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.type,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Education: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.education,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Institution: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.institue,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(" Licence No: ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    Text(widget.licenceno,
                      style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                  ],
                ),
                Row(
                  children: [
                    Text(" View Licence : ",
                      style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
              GestureDetector(
                onTap: () {
                  String pdfUrl = widget.pdf;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PDFScreen(pdfUrl: widget.pdf),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    width: 150,
                    height: 80,
                    child: Center(child: Text("View File",style: TextStyle(color: Colors.blue),)),
                    // Your container widget
                  ),
                ),
              )
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