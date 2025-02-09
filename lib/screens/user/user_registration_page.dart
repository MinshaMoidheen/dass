import 'package:flutter/material.dart';
import 'package:mentalhealth/common/formborders.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/constants/textstyle.dart';
import 'package:mentalhealth/screens/dcotor/doctor_details.dart';
import 'package:mentalhealth/screens/dcotor/doctor_registration_page.dart';
import 'package:mentalhealth/screens/user/user_details.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:mentalhealth/utilities/footer.dart';
import 'package:mentalhealth/utilities/mybutton.dart';
import 'package:mentalhealth/utilities/mytext.dart';
import 'package:mentalhealth/utilities/validator.dart';

class UserRegistraionPage extends StatefulWidget {
  const UserRegistraionPage({super.key});

  @override
  State<UserRegistraionPage> createState() => _UserRegistraionPageState();
}

class _UserRegistraionPageState extends State<UserRegistraionPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  final _regKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Patient'),
              Tab(text: 'Doctor'),

            ],
          ),

        ),

        body: TabBarView(
          children: [
            UserDetails(),
           DoctorDetails(),
          ],
        )
      ),
    );
  }
}
