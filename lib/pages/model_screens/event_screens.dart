import 'package:flutter/material.dart';

class EventScreens extends StatefulWidget {
  const EventScreens({Key? key}) : super(key: key);
  static const routeName = '/EventScreens';

  @override
  State<EventScreens> createState() => _EventScreensState();
}

class _EventScreensState extends State<EventScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
        centerTitle: true,
        foregroundColor: Colors.orange,
        backgroundColor: Colors.orangeAccent[100],
        elevation: 0.0,
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.orangeAccent[100],
            child: const Center(child: Text('Coming Soon!!!')),
          ),
          Container(
            color: Colors.orangeAccent[100],
            child: const Center(child: Text('Coming Soon!!!')),
          ),
          Container(
            color: Colors.orangeAccent[100],
            child: const Center(child: Text('Coming Soon!!!')),
          ),
        ],
      ),
    );
  }
}
