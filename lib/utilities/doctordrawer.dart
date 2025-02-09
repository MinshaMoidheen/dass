import 'package:flutter/material.dart';
import 'package:mentalhealth/utilities/mytext.dart';

class DoctorDrawer extends StatelessWidget {
  const DoctorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer( backgroundColor: Colors.lightBlue.shade900,
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
            leading: Icon(Icons.dashboard_outlined,color: Colors.white70,),
            title: const MyText('Dashboard',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined,color: Colors.white70,),
            title: const MyText('Appointment',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person,color: Colors.white70,),
            title: const MyText('patients',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.message_outlined,color: Colors.white70,),
            title: const MyText('Messages',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.medical_services_outlined,color: Colors.white70,),
            title: const MyText('Medications',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.library_books_outlined,color: Colors.white70,),
            title: const MyText('Documents',
              txtColor: Colors.white70,
              fontSize: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.currency_rupee_outlined,color: Colors.white70,),
            title: const MyText('Finances',
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

