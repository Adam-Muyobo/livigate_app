import 'package:flutter/material.dart';
import 'package:my_app/models/accomodation.dart';
import 'package:my_app/pages/model_screens/accommodation_screen.dart';

class AccommodationCard extends StatelessWidget {
  final Accommodation accommodation;
  const AccommodationCard({Key? key, required this.accommodation}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, AccommodationScreen.routeName, arguments: accommodation);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children:[
            Container(
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(accommodation.imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(100, 22, 44, 33),
                ),
                child: Text(
                  accommodation.lodgeName!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
