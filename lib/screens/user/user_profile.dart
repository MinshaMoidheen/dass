import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/user/edit_profile.dart';

class UserProfile extends StatefulWidget {
  var name;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  var mobile;
  var uid;
  var imgurl;
  
  
  
  
  UserProfile(
      {super.key,
      this.imgurl,
      this.name,
      this.dob,
      this.age,
      this.gender,
      this.uid,
      this.city,
      this.state,
      this.occupation,
      this.address,
      this.mobile});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override

  Widget build(BuildContext context) {
    print(widget.imgurl);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 240,
                child: Container(
                  height: 200,
                  width: 200,
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Name :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Date of birth :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.dob,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Age :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.age,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Gender :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.gender,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "City :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.city,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "State :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.state,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Occupation :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.occupation,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Text(
                    widget.address,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Mobile :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "+91${widget.mobile}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditDetails(
                      name: widget.name,
                      phno: widget.mobile,
                      uid: widget.uid,
                      age: widget.age,
                      city: widget.city,
                      state: widget.state,
                      occupation: widget.occupation,
                      address: widget.address,
                    ),
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.lightBlue.shade900,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
