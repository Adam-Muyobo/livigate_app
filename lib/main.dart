import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/pages/app_settings.dart';
import 'package:my_app/pages/event_screens.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/model_screens/accommodation_screen.dart';
import 'package:my_app/pages/model_screens/activity_screen.dart';
import 'package:my_app/pages/start_page.dart';
import 'package:my_app/pages/log_in_page.dart';
import 'package:my_app/pages/sign_up_page.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.orange[200],
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.orange,
        backgroundColor: Colors.orange[200],
        centerTitle: true,
        elevation: 0,
        titleTextStyle: GoogleFonts.bebasNeue(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Colors.orange,
        ),
      ),
    ),
    initialRoute: '/',
    routes: {
      '/':(context) => const StartPage(),
      LogIn.routeName:(context) => const LogIn(),
      SignUp.routeName:(context) => const SignUp(),
      HomePage.routeName:(context) => const HomePage(),
      ActivityScreen.routeName:(context) => const ActivityScreen(),
      AccommodationScreen.routeName:(context) => const AccommodationScreen(),
      EventScreens.routeName:(context) => const EventScreens(),
      SettingPage.routeName:(context) => const SettingPage(),
    },
  ));
}

