// dass21_widget.dart

import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/user/result_page.dart';

import '../../data/dass_questions.dart';

class Dass21Widget extends StatefulWidget {
  var createdname;

  var email;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  var mobile;
  var id;
  Dass21Widget(
      {super.key,
      this.id,
      this.createdname,
      this.occupation,
      this.gender,
      this.address,
      this.city,
      this.dob,
      this.age,
      this.state,
      this.mobile,
      this.email});

  @override
  State<Dass21Widget> createState() => _Dass21WidgetState();
}

class _Dass21WidgetState extends State<Dass21Widget> {
  int currentIndex = 0;

  List<int?> userResponses = [];
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text(
          'DASS-21',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(

          elevation: 5.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              // Question Text
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  questions[currentIndex].questionText,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
          

          
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Divider(height: 1.5,color: Colors.teal,indent: 20,endIndent: 20,),
              ),
          
              SizedBox(
                height: 20,
              ),
          
              // Rating Scale Options
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: questions[currentIndex].options.map((option) {
                    print(option);
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = option['value'] as int?;
                        });
                      },
                      child: Card(
                        color: selectedOption == option['value']
                            ? Color(0xff4A8A76)
                            : Color(0xff59567B),
                        elevation: 5.0,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              //  color: selectedOption == option['value'] ? Colors.green : Colors.white,

                              ),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text("${option['value'] + 1}"),
                            ),
                            title: Text("${option['opt']}",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
          
              // Next Button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        if (selectedOption != null) {
                          // Handle the selected option
                          // You may want to store the user's responses in a list
                          print('Selected Option: $selectedOption');
                          userResponses.add(selectedOption);
                          if (currentIndex < questions.length - 1) {
                            setState(() {
                              currentIndex++;
                              selectedOption = null; // Reset selected option for the next question
                            });
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultPage(
                                  questions: questions,
                                  userResponses: userResponses,
                                  id: widget.id, createdname: widget.createdname,
                                  email: widget.email,
                                  dob: widget.dob,
                                  age: widget.age,
                                  gender: widget.gender,
                                  city: widget.city,
                                  state: widget.state,
                                  occupation: widget.occupation,
                                  address: widget.address,
                                  mobile: widget.mobile,

                                ),
                              ),
                            );
                            print("Final Result: Calculate and Display Here");
                          }
                        } else {
                          // Show a message to the user that they need to select an option
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please select a rating before moving to the next question.'),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 45,
                        width: 200,
                        decoration: BoxDecoration(color: Color(0xff4A8A76),borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text('Next',style: TextStyle(color: Colors.white),),),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
