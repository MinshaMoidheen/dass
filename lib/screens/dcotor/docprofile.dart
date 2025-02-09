import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/dcotor/doc_edit.dart';
import 'package:mentalhealth/screens/user/edit_profile.dart';

class DocProfile extends StatefulWidget {
  var name;
 var officename;
  var address;
  var mobile;
  var uid;
  var exp;
  var institution;
  var licence;
  var location;
  var qualification;
  var type;
  var updates;
  var workhrs;
  var imgurl;



  DocProfile({super.key,this.name,this.imgurl,this.address,this.mobile,this.type,this.officename, this.uid,this.location,this.exp,this.updates,this.institution,this.licence,this.qualification,this.workhrs});

  @override
  State<DocProfile> createState() => _DocProfileState();
}

class _DocProfileState extends State<DocProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('Profile',
          style: TextStyle(
              color: Colors.white
          ),),
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

                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: widget.imgurl != null
                            ? NetworkImage(widget.imgurl!)
                            : AssetImage('assets/img/logo.png') as ImageProvider<Object>,
                        fit: BoxFit.cover, // You can adjust the BoxFit as needed
                      ),
                    ),
                  ),
                ),
              ),

            Row(
              children: [

                Text("Name :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Address :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.address,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Institution :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.institution,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Qualification :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.qualification,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Experience :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.exp,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("OfficeName :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.officename,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Location :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.location,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Working Hours :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.workhrs,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Type :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.type,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Updates :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.updates,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Mobile :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text("+91${widget.mobile}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Row(
              children: [

                Text("Licence :",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue.shade900,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(widget.licence,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DocEdit(
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
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
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
