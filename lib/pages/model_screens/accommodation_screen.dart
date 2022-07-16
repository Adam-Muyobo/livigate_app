import 'package:flutter/material.dart';
import 'package:my_app/models/accomodation.dart';


class AccommodationScreen extends StatelessWidget {
  const AccommodationScreen({Key? key}) : super(key: key);

  static const routeName = '/accommodationScreen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Accommodation;
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
                  '${args.lodgeName} in ${args.location}',
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '${args.description}. ${args.lodgeName} also has the following amenities and services. Amenities - ${args.amenities}. Services - ${args.services}.',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {print('Viewing Rooms');},
                  child: const Text('Visit!',),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
