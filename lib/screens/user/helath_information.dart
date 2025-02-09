import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/user/anxiety_info.dart';
import 'package:mentalhealth/screens/user/depression_info.dart';
import 'package:mentalhealth/screens/user/stress_info.dart';

class HealthInformation extends StatefulWidget {
  const HealthInformation({super.key});

  @override
  State<HealthInformation> createState() => _HealthInformationState();
}

class _HealthInformationState extends State<HealthInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text(
          "Mental Health Information",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade300,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 730,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return DepressionInfo();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Depression',
                            style: TextStyle(
                              // Add any text styling properties here
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return AnxietyInfo();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Anxiety',
                            style: TextStyle(
                              // Add any text styling properties here
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return StressInfo();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Stress',
                            style: TextStyle(
                              // Add any text styling properties here
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ], //children of column
              ),
            ),
          ),
        ),
      ),
    );
  }
}
