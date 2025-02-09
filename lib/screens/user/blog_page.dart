import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/user/feedbackpage.dart';
import 'package:mentalhealth/screens/user/helath_information.dart';
import 'package:mentalhealth/screens/user/self_tool.dart';

class BlogPage extends StatelessWidget {
var name;
var id;
 BlogPage({Key? key,this.name,this.id
 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text(
          "Resources Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 900,
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
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return HealthInformation();
                      }),
                    );
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
                          'Mental Health Information',
                          style: TextStyle(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return SelfTool();
                      }),
                    );
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
                          'Self-Help Tools',
                          style: TextStyle(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return FeedBackPage(
                          uid: id,

name: name,
                        );
                      }),
                    );
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
                          'Feedback',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
