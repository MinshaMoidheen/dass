import 'dart:ffi';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:uuid/uuid.dart';

class FeedbackDetail extends StatefulWidget {
  var title;
  var description;
  var createdby;
  var fdid;
  var reply;

  bool fromuser;

  FeedbackDetail({this.createdby,this.description,this.title,this.fdid,this.fromuser=false,this.reply});




  @override
  _FeedbackDetailState createState() => _FeedbackDetailState();
}

class _FeedbackDetailState extends State<FeedbackDetail> {

  TextEditingController _replyController=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Feedback Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Text(" Title: ",
                        style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                      Text(widget.title,
                        style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(" Description: ",
                        style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                      Text(widget.description,
                        style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(" CreatedBy: ",
                        style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                      Text(widget.createdby,
                        style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    ],
                  ),
                  SizedBox(height: 10,),


                  Row(
                    children: [
                      Text(" Reply ",
                        style: TextStyle(color: Colors.blueGrey,fontSize: 22 , fontWeight:FontWeight.bold ),),
                      Text(widget!.reply,
                        style: TextStyle(color: Colors.black,fontSize: 22 , fontWeight:FontWeight.bold ),),
                    ],
                  ),

             widget.fromuser==false?     TextFormField(controller: _replyController,
                    decoration: InputDecoration(hintText: "Enter Reply"),
                  ):SizedBox.shrink(),
                  widget.fromuser==false?
                  ElevatedButton(onPressed: (){


                    FirebaseFirestore.instance.collection('feedback').doc(widget.fdid).update(
                        {

                          'status':1,
                          'reply':_replyController.text
                        }).then((value) => Navigator.pop(context));




                  }, child: Text("Send Reply")):SizedBox.shrink(),

                ],

              ),
            ),
          ),
        ),
      ),

    );
  }



}