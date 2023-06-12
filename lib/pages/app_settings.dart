import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static const routeName = '/SettingsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        foregroundColor: Colors.orange,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.orange),

        ),
        centerTitle: true,
      ),

    );
  }
}
