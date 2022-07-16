import 'package:flutter/material.dart';
import 'package:my_app/models/activity.dart';

class ActivityScreen extends StatelessWidget {


  const ActivityScreen({Key? key,}) : super(key: key);
  static const routeName = '/ActivityScreen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Activity;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 370,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(args.imageUrl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${args.name} in ${args.location}',
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '${args.description}',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {print('booking this activity');},
                  child: const Text('Book Now!',),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

