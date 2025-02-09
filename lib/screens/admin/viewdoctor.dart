import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/admin/doctorr.dart';
class ViewDoctor extends StatefulWidget {
  const ViewDoctor({super.key});

  @override
  State<ViewDoctor> createState() => _ViewDoctorState();
}

class _ViewDoctorState extends State<ViewDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text("View Doctor",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
          child:
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection("doctor").
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
                                    builder: (context) =>DoctorDetail(
                                      pdf: snapshot.data!.docs[index]['licensepdf'],
                                      uid: snapshot.data!.docs[index]['uid'],
                                      name: snapshot.data!.docs[index]['fullname'],
                                      email: snapshot.data!.docs[index]['email'],
                                      updates: snapshot.data!.docs[index]['updates'],
                                      exp: snapshot.data!.docs[index]['experience'],
                                      office: snapshot.data!.docs[index]['officename'],
                                      location: snapshot.data!.docs[index]['location'],
                                      workhr: snapshot.data!.docs[index]['workinghrs'],
                                      type: snapshot.data!.docs[index]['type'],
                                      education: snapshot.data!.docs[index]['qualification'],
                                      phno: snapshot.data!.docs[index]['phno'],
                                      institue: snapshot.data!.docs[index]['institution'],
                                      licenceno: snapshot.data!.docs[index]['licence'],


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
                              title: Text(snapshot.data!.docs[index]['fullname']),
                              subtitle: Text(snapshot.data!.docs[index]['phno']),
                              trailing: snapshot.data!.docs[index]['status']==1?IconButton(onPressed: () async{

                                await FirebaseFirestore.instance.collection('Login').doc(snapshot.data!.docs[index]['uid']).update({

                                  'status':0
                                });

                                FirebaseFirestore.instance.collection("doctor").doc(snapshot.data!.docs[index]['uid']).update({
                                  'status':0
                                }).then((value) {
                                  showsnackbar("deleted Successfully!");
                                  Navigator.pop(context);
                                } );
                              },
                                icon: Icon(Icons.delete,color: Colors.red,),
                              ):IconButton(onPressed: () async{

                                await FirebaseFirestore.instance.collection('Login').doc(snapshot.data!.docs[index]['uid']).update({

                                  'status':1
                                });

                                FirebaseFirestore.instance.collection("doctor").doc(snapshot.data!.docs[index]['uid']).update({
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
