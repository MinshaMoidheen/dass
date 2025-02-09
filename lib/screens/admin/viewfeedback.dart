import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/admin/feedbackdetails.dart';
class ViewFeedbcak extends StatefulWidget {
  const ViewFeedbcak({super.key});

  @override
  State<ViewFeedbcak> createState() => _ViewFeedbcakState();
}

class _ViewFeedbcakState extends State<ViewFeedbcak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text("View Feedbacks",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
          child:
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection("feedback").
              where("status",isEqualTo: 1).
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
                    itemCount:snapshot.data!.docs.length ,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>FeedbackDetail(
                                      title: snapshot.data!.docs[index]['title'],
                                      description: snapshot.data!.docs[index]['desciption'],
                                      createdby: snapshot.data!.docs[index]['createdby'],
                                     fdid: snapshot.data!.docs[index]['feedback_id'],

                                    )));
                          },
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
                              subtitle: Text(snapshot.data!.docs[index]['createdby']),
                              trailing:snapshot.data!.docs[index]['status']==1?Text("Replied"):Text("Replay Pending") ,

                            ),
                          ),
                        ),
                      );

                    },

                  );
              }
          )
      ),
    );
  }

  void showsnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(value))
    );
  }


}
