import 'package:flutter/material.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/screens/admin/adddoctor.dart';
import 'package:mentalhealth/screens/admin/addpatient.dart';
import 'package:mentalhealth/screens/admin/viewdoctor.dart';
import 'package:mentalhealth/screens/admin/viewfeedback.dart';
import 'package:mentalhealth/screens/admin/viewpatient.dart';
class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text("Admin",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return AddPatient();
                    }));
                  },
                    child: Container(
                      height: 150,
                      width: 175,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.lightBlue.shade900,
            ),
                      child: Center(child: Text("Add Patient",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return ViewPatient();
                    }));
                  },
                    child: Container(
                      height: 150,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.lightBlue.shade900,
                      ),
                      child: Center(child: Text("view Patient",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return AddDoctor();
                    }));
                  },
                    child: Container(
                      height: 150,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.lightBlue.shade900,
                      ),
                      child: Center(child: Text("Add Doctor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return ViewDoctor();
                    }));
                  },
                    child: Container(
                      height: 150,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.lightBlue.shade900,
                      ),
                      child: Center(child: Text("View Doctor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return ViewFeedbcak();
                }));
              },
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.lightBlue.shade900,
                  ),
                  child: Center(child: Text("View Feedback",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
