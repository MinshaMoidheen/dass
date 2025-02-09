import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class AppointmentDetails extends StatefulWidget {
  var name;
  var dob;
  var age;
  var address;
  var gender;
  var city;
  var state;
  var occupation;
  var anxietyscore;
  var anxietysts;
  var depressionsts;
  var stresssts;
  var depressionscore;
  var stressscore;
  var phn;
  var problemfaced;
  var email;
  var id;


AppointmentDetails({super.key,this.name,this.address,this.occupation,this.state,this.city,this.gender,this.email,this.age,this.dob,this.id,this.depressionscore,this.depressionsts,this.stressscore,this.stresssts,this.anxietysts,this.anxietyscore,this.phn,this.problemfaced});

  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Center(
                child: Text("DASS",style: TextStyle(color: Colors.lightBlue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 24),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Text("Patient Details",style: TextStyle(color: Colors.lightBlue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Name:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Email:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.email,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("DOB:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.dob,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Age:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.age,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Address:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.address,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Gender:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.gender,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("City:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.city,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("State:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.state,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Occupation:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.occupation,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Contact no.:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.phn,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Problem Faced:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.problemfaced,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Depression Status:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.depressionsts,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Anxiety Status:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.anxietysts,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Row(
                  children: [
                    Text("Stress Status:",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text(widget.stresssts,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10,right: 25),
                child: Divider(thickness: 1.0,color: Colors.lightBlue.shade900,),
              ),

              

            ],
          ),
        ),
    );
  }
}
