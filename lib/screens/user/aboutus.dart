import 'package:flutter/material.dart';



class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("About Us",style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome to DASS, your trusted companion on the journey to mental well-being. At DASS, we understand that mental health is a crucial aspect of overall wellness. Our mission is to provide a supportive and accessible platform for individuals to assess and manage their emotional well-being.",
              ),
              SizedBox(height: 10,),
              Text(
                "Our Purpose:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("DASS is designed to empower individuals by offering a reliable and user-friendly experience for self-assessment of depression, anxiety, and stress levels. We believe that early identification and awareness are essential steps towards fostering a healthier mind."),
              SizedBox(height: 10,),
              Text(
                "How It Works:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("Through carefully crafted questionnaires, DASS utilizes validated scales to gauge various dimensions of mental health. Our app helps you gain insights into your emotional state, offering a starting point for self-reflection and understanding."),
              SizedBox(height: 10,),
              Text(
                "Key Features:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "1. Anonymous & Confidential:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Text("Your privacy is our priority. DASS ensures a confidential space for self-assessment, allowing you to explore your mental health without any judgment."),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "2. Personalized Insights:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Text("Receive personalized insights based on your responses. DASS provides information and resources to help you better understand and manage your mental well-being."),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "3. Mindfulness and Coping Strategies:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Text("Beyond assessment, DASS offers practical tips, mindfulness exercises, and coping strategies to support you in navigating life's challenges."),
              SizedBox(height: 10,),

              Text(
                "Our Commitment:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text("DASS is committed to promoting mental health awareness and destigmatizing discussions around depression, anxiety, and stress. We believe in the transformative power of self-awareness and seek to empower individuals to take charge of their mental well-being."),
              SizedBox(height: 10,),

              Text(
                "Join Us in the Journey:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text("Whether you're exploring your mental health for the first time or looking for additional support, DASS is here for you. Together, let's break the barriers surrounding mental health and foster a community of resilience and understanding."),
              SizedBox(height: 10,),
              Text("Thank you for choosing DASS. Your well-being matters, and we're here to support you every step of the way."),



            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeature(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(feature,style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}