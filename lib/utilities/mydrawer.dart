import 'package:flutter/material.dart';
import 'package:mentalhealth/data/dass_questions.dart';
import 'package:mentalhealth/screens/user/assessment.dart';
import 'package:mentalhealth/utilities/mytext.dart';




class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.lightBlue.shade900,
      child: ListView(
        children: [
          DrawerHeader(
            child:Column(
              children: [
                Image.asset('assets/img/mhl.png',
                  width:100,
                  height: 70,
                ),
                MyText(
                  "DASS",
                  txtColor: Colors.white,
                  fontSize: 20,
                  fw: FontWeight.w700,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.people,color: Colors.white70,),
            title: const MyText('Psychologists',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.assessment,color: Colors.white70,),
            title: const MyText('Assessment',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Dass21Widget();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard_outlined,color: Colors.white70,),
            title: const MyText('Dashboard',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.calendar_month,color: Colors.white70,),
            title: const MyText('Calender',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.school,color: Colors.white70,),
            title: const MyText('Education',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.article_outlined,color: Colors.white70,),
            title: const MyText('Blog',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble_outline,color: Colors.white70,),
            title: const MyText('Chat',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.white70,),
            title: const MyText('Settings',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined,color: Colors.white70,),
            title: const MyText('Log out',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
