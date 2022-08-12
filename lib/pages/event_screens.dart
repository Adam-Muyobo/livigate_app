import 'package:flutter/material.dart';

import '../models/events.dart';
import 'model_screens/event_screen.dart';

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
        children: <Widget>[...buildEventScreens(context)],
      ),
    );
  }

  List<Widget> buildEventScreens(BuildContext context) {
    List<Events>? events = Events.getEvents();
    List<Widget> widgets = [];
    for(int i = 0; i < events.length; i++){
      widgets.add(EventScreen(events: events[i],));
    }
    return widgets;
  }
}
