import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentalhealth/screens/dcotor/appointmentdetails.dart';
import 'package:url_launcher/url_launcher.dart';
class DocPatient extends StatefulWidget {
  var uid;
   DocPatient({super.key,this.uid});

  @override
  State<DocPatient> createState() => _DocPatientState();
}

class _DocPatientState extends State<DocPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Patients",
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: SafeArea(
        child:  StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("appointment")
              .where("bookingstatus", isEqualTo: 1)
              .where("doctorid", isEqualTo: widget.uid)
              .snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (!snapshot.hasData) {
              // still waiting for data to come
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData && snapshot.data!.docs.length == 0) {
              // got data from snapshot but it is empty
              return Center(child: Text("No Data found"));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var createdId = snapshot.data!.docs[index]['uid'];
                  var bookingStatus = snapshot.data!.docs[index]['bookingstatus'];
                  print(bookingStatus);
                  print(createdId);
                  var name = snapshot.data!.docs[index]['name'];
                  var problemFaced = snapshot.data!.docs[index]['problemfaced'];

                  var time = snapshot.data!.docs[index]['time'];
                  var dateTimestamp = snapshot.data!.docs[index]['date'];
                  var date = (dateTimestamp as Timestamp).toDate();
                  var formattedDate = DateFormat('yyyy-MM-dd').format(date);

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>AppointmentDetails(name:snapshot.data?.docs[index]['name'] ,
                                  dob:snapshot.data?.docs[index]['dob'] ,
                                  age:snapshot.data?.docs[index]['age'] ,
                                  address:snapshot.data?.docs[index]['address'] ,
                                  gender:snapshot.data?.docs[index]['gender'] ,
                                  city:snapshot.data?.docs[index]['city'] ,
                                  state:snapshot.data?.docs[index]['state'] ,
                                  occupation:snapshot.data?.docs[index]['occupation'] ,
                                  anxietyscore:snapshot.data?.docs[index]['anxietyscore'] ,
                                  anxietysts:snapshot.data?.docs[index]['anxietystatus'] ,
                                  depressionsts:snapshot.data?.docs[index]['depressionstatus'] ,
                                  stresssts:snapshot.data?.docs[index]['stressstatus'] ,
                                  depressionscore:snapshot.data?.docs[index]['depressionscore'] ,
                                  stressscore:snapshot.data?.docs[index]['stressscore'] ,
                                  phn:snapshot.data?.docs[index]['phone'] ,
                                  problemfaced:snapshot.data?.docs[index]['problemfaced'] ,
                                  email:snapshot.data?.docs[index]['email'] ,
                                  id:snapshot.data?.docs[index]['id'] ,

                                )));
                      },

                      child: Card(
                        elevation: 5,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             IconButton(onPressed: (){
                               _makePhoneCall(snapshot.data?.docs[index]['phone']);
                             }, icon:  Icon(Icons.phone),)
                            ],
                          ),
                          isThreeLine: true,
                          title: Text(
                            "${snapshot.data?.docs[index]['name']}.",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data?.docs[index]['problemfaced']}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "On ${formattedDate} at ${time}",
                                style: TextStyle(fontSize: 18),
                              ),

                              SizedBox(height: 8),
                            ],
                          ),

                        ),
                      ),
                    ),
                  );



                },
              );
            }
          },
        ),
      ),
    );
  }


  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

}
