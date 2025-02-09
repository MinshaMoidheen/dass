// result_page.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/models/question.dart';
import 'package:mentalhealth/screens/user/alldoctors.dart';
import 'package:mentalhealth/screens/user/child_psychology.dart';
import 'package:uuid/uuid.dart';


class ResultPage extends StatelessWidget {
  var createdname;

  var id;

  final List<Question> questions;
  final List<int?> userResponses;

  var email;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  var mobile;

  ResultPage({required this.questions, required this.userResponses,required this.id,required this.createdname,this.occupation,this.gender,this.address,this.city,this.dob,this.age
    ,this.state,this.mobile,this.email});

  @override
  Widget build(BuildContext context) {




    // Calculate individual scores for depression, anxiety, and stress
    int depressionScore = 0;
    int anxietyScore = 0;
    int stressScore = 0;
    List<int?> Stressvalues = [];
    List<int?> Anxietyvalues = [];
    List<int?> Depressionvalues = [];



    for (int i = 0; i < questions.length; i++) {
      int? response = userResponses[i];
      if (response != null) {
        switch (questions[i].aspect) {
          case 'Depression':
            depressionScore += response;
            Depressionvalues.add(response);
            break;
          case 'Anxiety':
            anxietyScore += response;
            Anxietyvalues.add(response);
            break;
          case 'Stress':
            stressScore += response;
            Stressvalues.add(response);
            break;
        // Add more cases if there are other aspects
        }
      }
    }

    print(Depressionvalues);
    print(Anxietyvalues);
    print(Stressvalues);

  int  dpscore=0;

    for(var str in Depressionvalues){

      if(str==0){

        dpscore=dpscore+0;

      }else if(str==1){

        dpscore=dpscore+1;
      }
      else if(str==2){

        dpscore=dpscore+2;
      }

      else {

        dpscore=dpscore+3;
      }

    }
    dpscore=dpscore*2;

    print(dpscore);

    int  axscore=0;

    for(var str in Anxietyvalues){

      if(str==0){

        axscore=axscore+0;

      }else if(str==1){

        axscore=axscore+1;
      }
      else if(str==2){

        axscore=axscore+2;
      }

      else {

        axscore=axscore+3;
      }

    }
    axscore=axscore*2;

    print(axscore);

    int  srscore=0;

    for(var str in Stressvalues){

      if(str==0){

        srscore=srscore+0;

      }else if(str==1){

        srscore=srscore+1;
      }
      else if(str==2){

        srscore=srscore+2;
      }

      else {

        srscore=srscore+3;
      }

    }
    srscore=srscore*2;

    print(srscore);

    var depressionstatus;
    if(dpscore <= 9){
      depressionstatus = "Normal";
    }
    else if(dpscore <= 13){
      depressionstatus = "Mild";
    }
    else  if(dpscore <= 20){
      depressionstatus = "Moderate";
    }
    else  if(dpscore <= 27){
      depressionstatus = "Severe";
    }
    else
      {
        depressionstatus = "Extremely Severe";
      }
print(depressionstatus);

    var anxietystatus;
    if(axscore <= 7){
      anxietystatus = "Normal";
    }
    else if(axscore <= 9){
      anxietystatus = "Mild";
    }
    else  if(axscore <= 14){
      anxietystatus = "Moderate";
    }
    else  if(axscore <= 19){
      anxietystatus = "Severe";
    }
    else
    {
      anxietystatus = "Extremely Severe";
    }
    print(anxietystatus);

    var stressstatus;
    if(srscore <= 14){
      stressstatus = "Normal";
    }
    else if(srscore <= 18){
      stressstatus = "Mild";
    }
    else  if(srscore <= 25){
      stressstatus = "Moderate";
    }
    else  if(srscore <= 33){
      stressstatus = "Severe";
    }
    else
    {
      stressstatus = "Extremely Severe";
    }
    print(stressstatus);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('DASS-21 RESULTS',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: double.infinity,
          child:CustomScrollView(slivers:[
            SliverFillRemaining(
              hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Result:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.lightBlue.shade900),
              ),
              SizedBox(height: 16),
              // Display user responses for each question
              // ...

              SizedBox(height: 32),
              // Table to display results
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(
                          child: Text('Depression',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19
                          ),),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('Anxiety',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19
                            ),),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('Stress',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19
                            ),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(depressionstatus.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(anxietystatus.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(stressstatus.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 32),
              Center(
                child: GestureDetector(
                  onTap: () {

                    Map<String,dynamic> data={

                      "drpression":depressionstatus,
                      "drepressionscore":depressionScore,
                      "stress":stressstatus,
                      "stresscore":stressScore,
                      'anxiety':anxietystatus,
                      'anxietyscore':anxietyScore


                    };

                  },
                  child: InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return AllDoctors(
                        createdname:createdname ,
                        uid: id,
                        stressscore: stressScore.toString(),
                        stresssts: stressstatus.toString(),
                        anxietyscore: anxietyScore.toString(),
                        anxietysts: anxietystatus.toString(),
                        depressionscore: depressionScore.toString(),
                        depressionsts: depressionstatus.toString(),
                        email: email,
                        dob: dob,
                        age: age,
                        gender: gender,
                        city: city
                        ,
                        state: state,
                        occupation: occupation,
                        address: address,
                        mobile: mobile,

                      );
                    }));
                  }

                    ,
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue.shade900,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Send to doctor",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                             fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
            ),
          ]
        ),
        ),
      ),
    );
  }
}
