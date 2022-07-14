import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/start_page.dart';
import 'package:my_app/pages/log_in_page.dart';
import 'package:my_app/pages/sign_up_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context) => const StartPage(),
      '/login':(context) => const LogIn(),
      '/signup':(context) => const SignUp(),
      '/home':(context) => const HomePage(),
    },
  ));
}

