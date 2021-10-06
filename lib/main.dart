import 'package:flutter/material.dart';
import 'package:job_app/pages/second_homepage.dart';
import 'package:job_app/pages/splash_page.dart';
import 'package:job_app/pages/started_page.dart';
import 'package:job_app/pages/signin_page.dart';
import 'package:job_app/pages/signup_page.dart';
import 'package:job_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        // '/started': (context) => StartedPage(),
        // '/signin': (context) => SignInPage(),
        // '/signup': (context) => SignUpPage(),
        // '/home': (context) => HomePage(),
        // '/second': (context) => SecondHomePage(),
      },
    );
  }
}
