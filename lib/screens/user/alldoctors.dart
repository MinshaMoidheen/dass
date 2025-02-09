import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/dcotor/dr_manisha.dart';
class AllDoctors extends StatefulWidget {
  var uid;
  var createdname;
  var anxietyscore;
  var depressionscore;
  var stressscore;
  var anxietysts;
  var depressionsts;
  var stresssts;

  var email;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  var mobile;


  AllDoctors({super.key,this.uid,this.createdname,this.anxietyscore,this.anxietysts,this.depressionscore,this.depressionsts,this.stressscore,this.stresssts,
    this.occupation,this.gender,this.address,this.city,this.dob,this.age
    ,this.state,this.mobile,this.email});

  @override
  State<AllDoctors> createState() => _AllDoctorsState();
}

class _AllDoctorsState extends State<AllDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("All Doctors", style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body:   Container(

       height: double.infinity,
        child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("doctor").
            where("status",isEqualTo: 1).
            snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
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
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return DrManisha(
                            name:snapshot.data?.docs[index]['fullname'] ,
                            phno: snapshot.data?.docs[index]['phno'],
                            updates: snapshot.data?.docs[index]['updates'],
                            imgurl: snapshot.data?.docs[index]['imgurl'],


                            id: snapshot.data?.docs[index]['uid'],
                            uid:widget.uid,
                            createdname: widget.createdname,
                            depressionsts: widget.depressionsts,
                            depressionscore: widget.depressionscore,
                            anxiteyscore: widget.anxietyscore,
                            anxiteysts: widget.anxietysts,
                            stresssts: widget.stresssts,
                            stressscore: widget.stressscore,

                            email: widget.email,
                            dob: widget.dob,
                            age: widget.age,
                            gender: widget.gender,
                            city: widget.city
                            ,
                            state: widget.state,
                            occupation: widget.occupation,
                            address: widget.address,
                            mobile: widget.mobile,

                            location: snapshot.data?.docs[index]['location'],
                            officename: snapshot.data?.docs[index]['officename'],
                            workhr: snapshot.data?.docs[index]['workinghrs'],
                            institution: snapshot.data?.docs[index]['institution'],
                            exp: snapshot.data?.docs[index]['experience'],
                            qualifoication: snapshot.data?.docs[index]['qualification'],


                          );
                        }));
                      },
                      child:Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 170,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 55,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: snapshot.data?.docs[index]['imgurl'] != ""
                                              ? NetworkImage(snapshot.data?.docs[index]['imgurl'])
                                              : AssetImage('assets/img/profile.png')
                                          as ImageProvider<Object>,
                                          fit: BoxFit.cover, // You can adjust the BoxFit as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "Dr. ${snapshot.data?.docs[index]['fullname']}",
                                        overflow: TextOverflow
                                            .ellipsis, // Add ellipsis if text overflows
                                        maxLines: 3,
                                        style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(snapshot.data?.docs[index]['type'],
                                        style: TextStyle(
                                            fontSize:16,
                                            fontWeight:FontWeight.w400
                                        ),
                                      ),
                                      Text(snapshot.data?.docs[index]['qualification'],
                                        style: TextStyle(
                                            fontSize:16,
                                            fontWeight:FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );

                  },

                );
            }
        ),
      ),
    );
  }
}

