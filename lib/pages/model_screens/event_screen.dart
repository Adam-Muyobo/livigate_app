import 'package:flutter/material.dart';
import 'package:my_app/models/events.dart';

class EventScreen extends StatelessWidget {
  final Events events;
  const EventScreen({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Container(
        color: Colors.orangeAccent[100],
        child: Center(child: Text(events.eventName)),
      ),
    );
  }
}

