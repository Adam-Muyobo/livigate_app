import 'package:flutter/material.dart';
import 'package:my_app/models/activity.dart';
import 'package:my_app/widgets/activity_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Activity>? activities = Activity.getActivities();
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
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
        backgroundColor: Colors.grey[800],
        title: const Text('home'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                print('Notifications');
              },
              icon: const Icon(Icons.notifications)
          ),
          IconButton(
              onPressed: (){
                print('Settings');
              },
              icon: const Icon(Icons.settings)
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
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              ActivityCard(activity: activities[0]!),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[...buildActivityCards(context)],
                  /*children: [
                    buildActivityCards(context),
                  ],*/
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
        runSpacing: 4.0,
        children: [
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {print('Go Home');}
          ),
          ListTile(
            title: const Text('Reservations'),
            leading: const Icon(Icons.home),
            onTap: () {print('Reservations');}
          ),
          ListTile(
            title: const Text('Activities'),
            leading: const Icon(Icons.home),
            onTap: () {print('Activities');}
          ),
          const Divider(color: Colors.black),
          ListTile(
            title: const Text('Log Out!'),
            leading: const Icon(Icons.logout),
            onTap: () {print('Bye');}
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
}
