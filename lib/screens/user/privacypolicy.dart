import 'package:flutter/material.dart';



class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Privacy Policy",  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              "Last updated: ${DateTime.now()}",
              style: TextStyle(fontSize: 16,color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              "1. Information We Collect",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildPrivacyPolicyPoint(
                "Personal Information: We may collect personal information such as name, email, and phone number when you create an account or make a booking.",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildPrivacyPolicyPoint(
                "Usage Data: We may collect information about how you interact with our app, including pages visited and features used.",
              ),
            ),
            SizedBox(height: 16),
            Text(
              "2. How We Use Your Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildPrivacyPolicyPoint(
                "Provide and maintain the app: We use your information to operate and maintain the House Hub app.",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildPrivacyPolicyPoint(
                "Improve user experience: We analyze usage data to enhance and personalize your experience with our app.",
              ),
            ),
            SizedBox(height: 16),
            // Add more sections as needed based on your privacy policy
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyPolicyPoint(String point) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        "• $point",
        style: TextStyle(fontSize: 16,color: Colors.black45),
      ),
    );
  }
}