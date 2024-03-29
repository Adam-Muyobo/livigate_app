import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/models/activity.dart';
import 'package:my_app/widgets/common_button.dart';

class ActivityScreen extends StatelessWidget {


  const ActivityScreen({Key? key,}) : super(key: key);
  static const routeName = '/ActivityScreen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Activity;
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${args.name} in ${args.location}',
                  style: GoogleFonts.bebasNeue(
                    color: Colors.orange,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '${args.description}',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              CommonButton(text: "BookNow!", function: (){})
            ],
          ),
        ),
      ),
    );
  }
}

