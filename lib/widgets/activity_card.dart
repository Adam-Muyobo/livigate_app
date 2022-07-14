import 'package:flutter/material.dart';
import 'package:my_app/models/activity.dart';

class ActivityCard extends StatelessWidget {

  final Activity activity;

  const ActivityCard({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          height: 200,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(activity.imageUrl!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Container(
            padding: const EdgeInsets.all(5),
            color: const Color.fromARGB(100, 22, 44, 33),
            child: Text(
              activity.name!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
