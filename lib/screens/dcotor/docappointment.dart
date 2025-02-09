import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DocAppontment extends StatefulWidget {
  var name;
  var uid;

  DocAppontment({super.key, this.name, this.uid});

  @override
  State<DocAppontment> createState() => _DocAppontmentState();
}

class _DocAppontmentState extends State<DocAppontment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text(
          "Appointment Request",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("appointment")
              .where("status", isEqualTo: 1)
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
                      child: Card(
                        elevation: 5,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person),
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



                          //
                          trailing: bookingStatus == 0
                              ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                                  InkWell(
                                    onTap: () {
                                      _updateBookingStatus(createdId, 1);
                                    },
                                    child: CircleAvatar(
                                      radius: 18,
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      _updateBookingStatus(createdId, 2);
                                    },
                                    child: CircleAvatar(
                                      radius: 18,
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                            ],
                          ),
                                ],
                              )
                              : Text(
                            bookingStatus == 1 ? "Accepted" : "Rejected",
                            style: TextStyle(
                              color: bookingStatus == 1 ? Colors.green : Colors.red,
                              fontSize: 18,
                            ),
                          ),


                          //
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

  // Function to update booking status in Firebase
  void _updateBookingStatus(String documentId, int status) {
    FirebaseFirestore.instance
        .collection("appointment")
        .doc(documentId)
        .update({'bookingstatus': status});
  }
}
