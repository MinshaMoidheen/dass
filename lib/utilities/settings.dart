import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/screens/user/aboutus.dart';
import 'package:mentalhealth/screens/user/contactus.dart';
import 'package:mentalhealth/screens/user/forgotpass.dart';
import 'package:mentalhealth/screens/user/privacypolicy.dart';
import 'package:mentalhealth/screens/user/termsandconditions.dart';


class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.lightBlue.shade900,
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Personalize",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                Card(
                  elevation: 1.6,
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, bottom: 8, top: 10),
                          child: Text(
                            "App Notifications",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 8,
                          endIndent: 8,
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPasswordScreen()));
                          },
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, bottom: 8),
                            child: Text(
                              "Change Password",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 8,
                          endIndent: 8,
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                        //   child: Text(
                        //     "Clear History",
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //     ),
                        //   ),
                        // ),
                        // Divider(
                        //   indent: 8,
                        //   endIndent: 8,
                        //   thickness: 1.5,
                        //   color: Colors.black26,
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     String currentUserId =
                        //         FirebaseAuth.instance.currentUser?.uid ?? '';
                        //     BookmarkService()
                        //         .clearBookmarks(currentUserId)
                        //         .then((value) => ScaffoldMessenger.of(context)
                        //         .showSnackBar(SnackBar(
                        //         content: Text("Bookmarks Cleared"))));
                        //   },
                        //   child: Padding(
                        //     padding:
                        //     const EdgeInsets.only(left: 8.0, bottom: 10),
                        //     child: Text(
                        //       "Clear Bookmarks",
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8, bottom: 10),
                  child: Text(
                    "Information and Support",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                Card(
                  elevation: 1.6,
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, bottom: 8, top: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TermsAndConditionsScreen()),
                              );
                            },
                            child: Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 8,
                          endIndent: 8,
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicyScreen()),
                            );
                          },
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, bottom: 8),
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 8,
                          endIndent: 8,
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutUsScreen()),
                            );
                          },
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, bottom: 8),
                            child: Text(
                              "About Us",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 8,
                          endIndent: 8,
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 10),
                          child: Text(
                            "Version 1.1.0",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8, bottom: 10),
                  child: Text(
                    "Feedback",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                Card(
                  elevation: 1.6,
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactUsScreen()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, bottom: 8, top: 10),
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 8,
                          endIndent: 8,
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 15),
                          child: InkWell(
                            onTap: () async {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );

                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
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