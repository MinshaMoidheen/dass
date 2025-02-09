import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentalhealth/common/login_page.dart';

import 'package:mentalhealth/screens/dcotor/docappointment.dart';
import 'package:mentalhealth/screens/dcotor/docpatient.dart';
import 'package:mentalhealth/screens/dcotor/docprofile.dart';
import 'package:mentalhealth/screens/user/assessment.dart';
import 'package:mentalhealth/utilities/doctordrawer.dart';
import 'package:mentalhealth/utilities/settings.dart';

class DoctorHomepage extends StatefulWidget {
  var name;
  var officename;
  var type;
  var address;
  var mobile;
  var uid;
  var exp;
  var institution;
  var licence;
  var location;
  var qualification;
  var updates;
  var workhrs;
  var imgurl;



  DoctorHomepage({super.key,this.name,this.address,this.mobile,this.type,this.officename,this.imgurl,
    this.uid,this.location,this.exp,this.updates,this.institution,this.licence,this.qualification,this.workhrs});

  @override
  State<DoctorHomepage> createState() => _DoctorHomepageState();
}




class _DoctorHomepageState extends State<DoctorHomepage> {
  int _currentIndex = 0; // Index for the selected tab
  var today; // Added to store the current date



  @override
  void initState() {
    super.initState();
   today = DateTime.now().toUtc();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.uid);
    today = DateTime.now().toUtc();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return LoginPage();
              }));
            }, icon: Icon(Icons.logout)),
          )
        ],
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

                break;
              case 1:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return DocAppontment(
                    uid: widget.uid,
                    name: widget.name,
                  );
                }));
                break;
              case 2:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return DocPatient(
                    uid: widget.uid,
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
            icon: Icon(Icons.calendar_today),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Patients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Form(
          child: CustomScrollView(
            slivers: [

              SliverToBoxAdapter(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img/mentalhealthlogo.png',
                      width: 90,
                      height: 50,
                    ),
                    SizedBox(
                      width: 220,
                    ),


                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return DocProfile(
                            imgurl:widget.imgurl,
                            name: widget.name,
                            mobile: widget.mobile,
                            uid: widget.uid,
                            address: widget.address,
                            officename: widget.officename,
                            exp: widget.exp,
                            institution: widget.institution,
                            location: widget.location,
                            qualification: widget.qualification,
                            type: widget.type,
                            updates: widget.updates,
                            workhrs: widget.workhrs,
                            licence: widget.licence,

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
                              image: widget.imgurl != null
                                  ? NetworkImage(widget.imgurl!)
                                  : AssetImage('assets/img/profile.png')
                              as ImageProvider<Object>,
                              fit: BoxFit.cover, // You can adjust the BoxFit as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: double.infinity,
                color: Colors.grey.shade300,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 130,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/img/doctor.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 0,
                      right: 130,
                      child: Column(
                        children: [
                          Text(
                            "Hello Dr.${widget.name}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "bless you a wonderful day!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(

                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Todays Appointments:  ${DateFormat.yMMMMd().format(today)}",style: TextStyle(color: Colors.lightBlue.shade900,fontWeight: FontWeight.bold,fontSize: 20),),
                      StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('appointment')
                            .where('doctorid', isEqualTo: widget.uid)
                            .where('date', isGreaterThanOrEqualTo: Timestamp.fromDate(DateTime(today.year, today.month, today.day)))
                            .where('date', isLessThan: Timestamp.fromDate(DateTime(today.year, today.month, today.day + 1)))
                            .where('bookingstatus', isEqualTo: 1)
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return CircularProgressIndicator(); // Loading indicator while fetching data
                          } else if (snapshot.hasError) {
                            return Center(child: Text('Error: ${snapshot.error}'));
                          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                            return Center(child: Text('No confirmed bookings for today'));
                          } else {
                            // Display the list of confirmed bookings
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                print("hello");
                                var booking = snapshot.data!.docs[index];
                                var bookingDate = (booking['date'] as Timestamp).toDate();
                                var formattedDate = DateFormat.yMMMMd().format(bookingDate);

                                return Card(
                                  color: Color(0xff4A8A76),
                                  child: ListTile(
                                    title: Text('Patient: ${booking['name']}',style: TextStyle(color: Colors.white),),
                                    subtitle: Text('Time: ${booking['time']}',style: TextStyle(color: Colors.white)),
                                    // You can add more details from the booking document as needed
                                  ),
                                );
                              },
                            );
                          }
                        },
                      ),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Heading at the top center
                      Text(
                        'The Healing Quill: Insights and Innovations in Medicine',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      // Adding some space

                      // First Row: Text on the left, Image on the right
                      Row(
                        children: [
                          // Left side - Main Text and Additional Text
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Welcome to "The Healing Quil," a dedicated space for doctors, healthcare professionals, and medical enthusiasts alike. This blog aims to foster a community where medical professionals can exchange knowledge, share experiences, and stay updated on the latest advancements in the ever-evolving field of medicine. Our mission is to create a platform that not only informs but also inspires, connecting healthcare providers from different specialties and backgrounds.',
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Image
                          Expanded(
                            flex: 6,
                            child: Image.asset(
                              "assets/img/doc1.jpg",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Medical Breakthroughs:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),// Adding some space

                      // Second Row: Image on the left, Text on the right
                      Row(
                        children: [
                          // Left side - Image
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/img/doc2.webp",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Paragraph Text
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Explore the latest innovations and breakthroughs in medicine, including new treatment modalities, cutting-edge technologies, and groundbreaking research findings.',
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Clinical Pearls:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),
                      Row(
                        children: [
                          // Left side - Main Text and Additional Text
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Share valuable clinical insights, case studies, and practical tips that can enhance the day-to-day practice of healthcare professionals. Discuss challenging cases, successful treatment approaches, and lessons learned.',
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Image
                          Expanded(
                            flex: 6,
                            child: Image.asset(
                              "assets/img/doc3.jpg",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Professional Development:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),
                      Row(
                        children: [
                          // Left side - Image
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/img/doc4.jpg",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Paragraph Text
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Provide resources and guidance on career development, continuing medical education, and staying abreast of regulatory changes. Discuss strategies for maintaining a healthy work-life balance and addressing burnout.',
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Patient Stories:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),
                      Row(
                        children: [
                          // Left side - Main Text and Additional Text
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Feature inspirational stories of patient recovery, resilience, and the impact of compassionate care. Share experiences that highlight the human side of medicine and the importance of empathy in healthcare.',
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Image
                          Expanded(
                            flex: 6,
                            child: Image.asset(
                              "assets/img/doc5.jpg",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Healthcare Technology:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),
                      Row(
                        children: [
                          // Left side - Image
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/img/doc6.jpg",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Paragraph Text
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Delve into the latest healthcare technologies, electronic medical records, telemedicine, and artificial intelligence applications in medicine. Discuss how technology is shaping the future of healthcare delivery.',
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Global Health Perspectives:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),
                      Row(
                        children: [
                          // Left side - Main Text and Additional Text
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Explore healthcare challenges and successes from around the world. Discuss global health issues, initiatives, and opportunities for collaboration in addressing health disparities.',
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(width: 16.0), // Adding some space

                          // Right side - Image
                          Expanded(
                            flex: 6,
                            child: Image.asset(
                              "assets/img/doc7.webp",
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                        child: Text("Conclusion:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.lightBlue.shade900,
                          ),),
                      ),
                      Text('"The Healing Quill" aims to be a beacon for doctors seeking a supportive online community, a source of inspiration for continued learning, and a platform for sharing the profound experiences that come with a career in medicine. Join us on this journey of exploration, collaboration, and growth as we navigate the vast landscape of healthcare together.'),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),





            ], //children of column
          ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}

