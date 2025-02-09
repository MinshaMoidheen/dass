import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/common/login_page.dart';
import 'package:mentalhealth/common/splash_page.dart';
import 'package:mentalhealth/firebase_options.dart';
import 'package:mentalhealth/screens/user/user_registration_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SplashPage(),
        "/signup": (context) => UserRegistraionPage(),
        "/login": (context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
    );
  }
}
