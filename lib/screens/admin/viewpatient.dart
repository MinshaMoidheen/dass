import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/admin/patientdetail.dart';
class ViewPatient extends StatefulWidget {
  const ViewPatient({super.key});

  @override
  State<ViewPatient> createState() => _ViewPatientState();
}

class _ViewPatientState extends State<ViewPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text("View Patient",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child:
        StreamBuilder(
            stream: FirebaseFirestore.instance.collection("patient").

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
                                  builder: (context) =>PatientDetail(
                                    uid: snapshot.data!.docs[index]['uid'],
                                    name: snapshot.data!.docs[index]['name'],
                                    email: snapshot.data!.docs[index]['email'],
                                    dob: snapshot.data!.docs[index]['dob'],
                                    age: snapshot.data!.docs[index]['age'],
                                    gender: snapshot.data!.docs[index]['gender'],
                                    city: snapshot.data!.docs[index]['city'],
                                    state: snapshot.data!.docs[index]['state'],
                                    occupation: snapshot.data!.docs[index]['occupation'],
                                    address: snapshot.data!.docs[index]['address'],
                                    phno: snapshot.data!.docs[index]['mobile'],
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
                            title: Text(snapshot.data!.docs[index]['name']),
                            subtitle: Text(snapshot.data!.docs[index]['mobile']),
                            trailing: snapshot.data!.docs[index]['status']==1?IconButton(onPressed: () async{

                              await FirebaseFirestore.instance.collection('Login').doc(snapshot.data!.docs[index]['uid']).update({

                                'status':0
                              });

                              FirebaseFirestore.instance.collection("patient").doc(snapshot.data!.docs[index]['uid']).update({
                                'status':0
                              }).then((value) {
                                showsnackbar("deleted Successfully!");
                                Navigator.pop(context);
                              } );
                            },
                            icon: Icon(Icons.delete),
                            ):IconButton(onPressed: () async{

                              await FirebaseFirestore.instance.collection('Login').doc(snapshot.data!.docs[index]['uid']).update({

                                'status':1
                              });

                              FirebaseFirestore.instance.collection("patient").doc(snapshot.data!.docs[index]['uid']).update({
                                'status':1
                              }).then((value) {
                                showsnackbar("Added Successfully!");
                                Navigator.pop(context);
                              } );
                            },
                              icon: Icon(Icons.check),
                            ),
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
