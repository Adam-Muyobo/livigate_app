import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/accomodation.dart';
import 'package:my_app/models/activity.dart';
import 'package:my_app/pages/event_screens.dart';
import 'package:my_app/widgets/accommodation_card.dart';
import 'package:my_app/widgets/activity_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      drawer: Drawer(
        backgroundColor: Colors.orangeAccent[200],
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                buildMenuHeader(context),
                buildMenuItems(context),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.orange,
        backgroundColor: Colors.orangeAccent[100],
        title: const Text('home'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: (){
                if (kDebugMode) {
                  print('Notifications');
                }
              },
              icon: const Icon(Icons.notifications)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text(
                'Activities',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[...buildActivityCards(context)],
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Accomodation',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[...buildAccommodationCards(context)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 2.0,
        children: [
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {if (kDebugMode) {
              print('Go Home');
            }}
          ),
          ListTile(
            title: const Text('Reservations'),
            leading: const Icon(Icons.note_add_outlined),
            onTap: () {if (kDebugMode) {
              print('Reservations');
            }}
          ),
          ListTile(
            title: const Text('Events'),
            leading: const Icon(Icons.calendar_month),
            onTap: () {
              Navigator.pushNamed(context, EventScreens.routeName);
              if (kDebugMode) {
                print('Activities');
              }
            }
          ),
          const Divider(color: Colors.black),
          ListTile(
            title: const Text('Log Out!'),
            leading: const Icon(Icons.logout),
            onTap: () {
              Navigator.pushNamed(context, '/');
              if (kDebugMode) {
                print('Bye');
              }
            }
          ),
        ],
      ),
    );
  }
  Widget buildMenuHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
          ),
          SizedBox(height: 10,),
          Text('Adam',),
          Text('muyoboadam@gmail.com')
        ],
      ),
    );
  }

  List<Widget> buildActivityCards(BuildContext context) {
    List<Activity>? activities = Activity.getActivities();
    List<Widget> widgets = [];
    widgets.add(const SizedBox(height: 10,));
    for(int i = 0; i < activities.length; i++){
      widgets.add(ActivityCard(activity: activities[i]));
      widgets.add(const SizedBox(height: 10,));
    }
    return widgets;
  }

  buildAccommodationCards(BuildContext context) {
    List<Accommodation>? lodges = Accommodation.getAccommodation();
    List<Widget> widgets = [];
    widgets.add(const SizedBox(height: 10,));
    for(int i = 0; i < lodges.length; i++){
      widgets.add(AccommodationCard(accommodation: lodges[i]));
      widgets.add(const SizedBox(height: 10,));
    }
    return widgets;
  }
}
