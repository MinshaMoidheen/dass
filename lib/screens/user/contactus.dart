import 'package:flutter/material.dart';


class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.lightBlue.shade900,
        title: Text("Contact Us",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Have questions or feedback? We're here to help!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildContactInfo(
              "Email: support@dass.com",
              Icons.email,
                  () => _launchEmail("support@dass.com"),
            ),
            _buildContactInfo(
              "Phone: +91 9645429089",
              Icons.phone,
                  () => _launchPhone("+919746925689"),
            ),
            _buildContactInfo(
              "Visit our office:",
              Icons.location_on,
                  () {
                // Add logic to open a map or provide office address
              },
            ),
            SizedBox(height: 16),
            _buildText(
              "We strive to respond to your inquiries as quickly as possible. Your satisfaction is our priority.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String text, IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.black45,
            ),
            SizedBox(width: 16),
            Text(
              text,
              style: TextStyle(fontSize: 16,color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: TextStyle(fontSize: 16,color: Colors.white),
      ),
    );
  }

  void _launchEmail(String email) {

  }

  void _launchPhone(String phoneNumber) {

  }
}