import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/screens/admin/feedbackdetails.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/validator.dart';
import 'package:uuid/uuid.dart';
class FeedBackPage extends StatefulWidget {
var name;
var uid;
   FeedBackPage({super.key,this.name,this.uid});

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {

  var _addfeedback = new GlobalKey<FormState>();

  TextEditingController _title=TextEditingController();
  TextEditingController _description=TextEditingController();


  var uuid = Uuid();
  var v1;

  void initState() {
    v1 = uuid.v1();

    super.initState();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                child: CustomTextFormField(
                  validator: (value){

                    return "enter valid title";
                  },
                  style: TextStyle(color: Colors.black87),

                  controller: _title,
                  hintText: "Enter Title",
                  enabledBorder: enabledBorder,
                  focusedBorder:focusBorder,
                  hintStyle: hintStyle,
                  errorStyle: errorStyle,
                  errorBorder: errBorder,

                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: CustomTextFormField(
                  validator: (value){

                    return "enter valid description";
                  },
                  style: TextStyle(color: Colors.black87),

                  controller: _description,
                  hintText: "Enter Description",
                  enabledBorder: enabledBorder,
                  focusedBorder:focusBorder,
                  hintStyle: hintStyle,
                  errorStyle: errorStyle,
                  errorBorder: errBorder,

                ),
              ),

              SizedBox(height: 20,),
              Center(
                child: InkWell(
                  onTap: (){

                     FirebaseFirestore.instance.collection('feedback').doc(v1).set({

                       "title":_title.text,
                       "desciption":_description.text,
                       'createdby':widget.name,
                       "status": 1,
                       "feedback_id":v1,
                       "createdDate": DateTime.now(),
                       'senderId':widget.uid,
                       'reply':""

                     }).then((value) {
                       showsnackbar("Add Feedback Successfully");
                       Navigator.pop(context);
                     }
                     );


                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlue.shade900,
                    ),
                      height: 40,
                      width: 100,


                      child: Center(
                        child: Text(
                         "Submit",style: TextStyle(color: Colors.white,fontSize: 16),


                        ),
                      )
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Text("Your Feedback History",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("feedback").
                  where("status",isEqualTo: 1).where('senderId',isEqualTo:widget.uid).
                  snapshots(),
                  builder: (context,  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                    if(!snapshot.hasData){
                      // still waiting for data to come
                      return Center(child: CircularProgressIndicator());

                    }
                    else if(snapshot.hasData &&  snapshot.data!.docs.length==0) {
                      // got data from snapshot but it is empty

                      return Center(child: Text("No Data found"));
                    }
                    else
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount:snapshot.data!.docs.length ,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(

                              child: Container(
                                width: 250,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.blue,
                                        Colors.white70,
                                      ]
                                  ),
                                ),
                                child: ListTile(
                                  leading: Text((index+1).toString()),
                                  title: Text(snapshot.data!.docs[index]['title']),
                                  subtitle: Text(snapshot.data!.docs[index]['desciption']),
                                 // trailing:snapshot.data!.docs[index]['status']==1?Text("Replied"):Text("Replay Pending") ,

                                ),
                              ),
                            ),
                          );

                        },

                      );
                  }
              )

            ],
          ),
        ),
      ),
    );
  }
  void showsnackbar(String value){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(value))
        );
    }



}
