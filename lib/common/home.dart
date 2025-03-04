

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/constants/constants.dart';
import 'package:mentalhealth/screens/dcotor/dr_manisha.dart';
import 'package:mentalhealth/screens/user/alldoctors.dart';
import 'package:mentalhealth/screens/user/allpsychiatrist.dart';
import 'package:mentalhealth/screens/user/allpsychologist.dart';
import 'package:mentalhealth/screens/user/assessment.dart';
import 'package:mentalhealth/screens/user/blog_page.dart';
import 'package:mentalhealth/screens/user/chat_page.dart';
import 'package:mentalhealth/screens/user/child_psychology.dart';
import 'package:mentalhealth/screens/user/docdetails.dart';
import 'package:mentalhealth/screens/user/fall_asleep.dart';
import 'package:mentalhealth/screens/user/kindness_meditation.dart';
import 'package:mentalhealth/screens/user/listening_skills.dart';
import 'package:mentalhealth/screens/user/notification.dart';
import 'package:mentalhealth/screens/user/user_profile.dart';
import 'package:mentalhealth/screens/user/walking_meditation.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:mentalhealth/utilities/settings.dart';


class HomePage extends StatefulWidget {
  var uid;
  var name;
 var email;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  var mobile;
  var imgurl;

  HomePage({Key? key,this.imgurl,this.name,this.uid,this.email,this.dob,this.age,this.gender,this.city,this.state,this.occupation,this.address,this.mobile}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String? typeOfCounselling;
  String? districtType;
  List image = ['walkingmedidation.jpg'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return LoginPage(); // Replace with the actual widget for the Chat page
            }));
          }, icon: Icon(Icons.logout,color: Colors.white,))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Form(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [



                    Stack(
                      children: [
                        Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width*85,

                        ),
                        Positioned(
                          left: 14,
                            top: 15,

                            child: Text(
                              "Welcome,",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),),

                        Positioned(
                          left: 90,
                          top: 15,
                          child: Text(
                          "${widget.name}",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),),
                        Positioned(
                          right: 80,
                          top: 10,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return NotificationPage(
                                    uid: widget.uid,
                                  );
                                }));
                              },
                              child: Icon(
                                Icons.circle_notifications_outlined,
                                size: 50
                                ,
                              ),
                            ),),

                        Positioned(
                          right: 20,
                          top: 10,
                          child:  GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return UserProfile(
                                  imgurl: widget.imgurl,
                                  name: widget.name,
                                  dob: widget.dob,
                                  age: widget.age,
                                  gender: widget.gender,
                                  city: widget.city,
                                  state: widget.state,
                                  occupation: widget.occupation,
                                  address: widget.address,
                                  mobile: widget.mobile,
                                  uid:widget.uid,


                                );
                              }));
                            },
                            child:CircleAvatar(
                              radius: 25,
                              child: Container(

                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                         AssetImage('assets/img/profile.png')
                                    as ImageProvider<Object>,
                                    fit: BoxFit.cover, // You can adjust the BoxFit as needed
                                  ),
                                ),
                              ),
                            ),
                          ),)
                      ],
                    ),




                    Center(
                      child: Container(
                        height: 170,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/postpartum.png',
                              height: 100,
                              width: 180,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Learn About Postpartum Depression: Symptoms, Treatments, and finding help",
                                    overflow: TextOverflow
                                        .ellipsis, // Add ellipsis if text overflows
                                    maxLines: 3,
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                        return PostpartumDepression();
                                      }));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue.shade900,
                                          borderRadius: BorderRadius.circular(20)),
                                      child: const Center(
                                        child: Text(
                                          "Learn more      >",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      padding: EdgeInsets.only(left:20),
                      child: Text(
                        "Psychologists",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),




                    Container(
                      height: 420,
                      child: StreamBuilder(
                          stream: FirebaseFirestore.instance.collection("doctor").
                          where("status",isEqualTo: 1).where('type',isEqualTo:"Psychologist").
                          orderBy("createdAt",descending: true).limit(2).
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
                                        return DocDetails(
                                          name:snapshot.data?.docs[index]['fullname'] ,
                                          phno: snapshot.data?.docs[index]['phno'],
                                          updates: snapshot.data?.docs[index]['updates'],
                                          uid: widget.uid,
                                          createdname: widget.name,
                                          // imgurl:snapshot.data?.docs[index]['imgurl'] ,

                                          id: snapshot.data?.docs[index]['uid'],
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
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Row(
                                            children: [
                                              // Icon(
                                              //   Icons.image_rounded,
                                              //   size: 160,
                                              // ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  radius: 55,
                                                  child: Container(

                                                    decoration: BoxDecoration(
                                                      color: Colors.blueAccent,
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image:  AssetImage('assets/img/doctor.jpeg')
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
                                                      height: 20,
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
                    ) ,






                    Center(
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return AllPsychologist(

                                uid: widget.uid,
                                createdname: widget.name,
                              );
                            }));
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade100,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "See all     >",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,) ,

                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Mindfulness meditation",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),

                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return WalkingMeditation();
                            }));
                          },
                            child: Container(
                              height: 220,
                              width: 400,

                              child: Stack(
                                children: [
                                  Positioned(
                                    top:10,
                                    child: Container(
                                        height: 200,

                                        width: 450,
                                        child: Image.asset("assets/img/walkingmeditation.jpg",fit: BoxFit.cover,)),
                                  ),
                                  Positioned(
                                    bottom: 30,
                                    left: 50,
                                    right: 50,
                                    child: Text("Try this simple walking meditation",
                                      style: TextStyle(
                                        fontSize:20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return ListeningSkills();
                            }));
                          },
                            child: Container(
                              height: 220,
                              width: 400,

                              child: Stack(
                                children: [

                                  Positioned(
                                    top:10,
                                    child: Container(
                                        height: 200,

                                        width: 400,
                                        child: Image.asset("assets/img/listening.jpeg",fit: BoxFit.cover,)),
                                  ),
                                  Positioned(
                                    bottom: 30,
                                    left: 50,
                                    right: 50,
                                    child: Text("5 ways mindfulness can improve your listening skills",
                                      style: TextStyle(
                                        fontSize:20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return KindnessMeditation();
                            }));
                          },
                            child: Container(
                              height: 220,
                              width: 400,

                              child: Stack(
                                children: [

                                  Positioned(
                                    top:10,
                                    child: Container(
                                        height: 200,

                                        width: 400,
                                        child: Image.asset("assets/img/kindness.webp",fit: BoxFit.cover,)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          GestureDetector(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return FallAsleep();
                            }));
                          },
                            child: Container(
                              height: 220,
                              width: 400,

                              child: Stack(
                                children: [

                                  Positioned(
                                    top:10,
                                    child: Container(
                                        height: 200,

                                        width: 400,
                                        child: Image.asset("assets/img/asleep.webp",fit: BoxFit.cover,)),
                                  ),
                                  Positioned(
                                      bottom: 30,
                                      left: 50,
                                      right: 50,
                                      child: Text("5 Steps to Wind Down and Fall Asleep",
                                        style: TextStyle(
                                          fontSize:20,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20),
                      child: Text(
                        "Psychiatrist",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 420,
                      child: StreamBuilder(
                          stream: FirebaseFirestore.instance.collection("doctor").
                          where("status",isEqualTo: 1).where('type',isEqualTo:"Psychiatrist").orderBy("createdAt",descending: true).limit(2).
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
                                        return DocDetails(
                                          name:snapshot.data?.docs[index]['fullname'] ,
                                          phno: snapshot.data?.docs[index]['phno'],
                                          updates: snapshot.data?.docs[index]['updates'],
                                          uid: widget.uid,
                                          createdname: widget.name,
                                         // imgurl: snapshot.data?.docs[index]['imgurl'],

                                          id: snapshot.data?.docs[index]['uid'],
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
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Row(
                                            children: [
                                              // Icon(
                                              //   Icons.image_rounded,
                                              //   size: 160,
                                              // ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  radius: 55,
                                                  child: Container(

                                                    decoration: BoxDecoration(
                                                      color: Colors.blueAccent,
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/img/doctor.jpeg')
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
                                                      height: 20,
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
                    ) ,

                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return AllPsychiatrist(
                                uid: widget.uid,
                                createdname: widget.name,
                              );
                            }));
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade100,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "See all     >",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    // ... your existing code ...
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.lightBlue.shade900,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        backgroundColor: Colors.lightBlue.shade900,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
              // Navigate to the Home page
                break;
              case 1:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Dass21Widget(
                    id: widget.uid,
                    createdname: widget.name,
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


                  );
                }));
                break;
              case 2:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return BlogPage(
                    name: widget.name,
                    id: widget.uid,

                  ); // Replace with the actual widget for the Blog page
                }));
                break;
              case 3:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Settingpage(); // Replace with the actual widget for the Chat page
                }));
                break;

            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Assessment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}