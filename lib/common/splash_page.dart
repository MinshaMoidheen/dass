import 'package:flutter/material.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/constants/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      //Navigator.push(
      //context, MaterialPageRoute(builder: (context) => LoginPage()));
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>LoginPage()), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img/mentalhealthlogo.png',
                  scale: 3,
                ),
                SizedBox(height: 30,),
                Text("Welcome to",style: TextStyle(fontWeight: FontWeight.w600),),
                SizedBox(height: 5,),
                Text(
                  appTitle,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            ),
        );
    }
}