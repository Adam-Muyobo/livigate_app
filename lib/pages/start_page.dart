import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const Icon(
              Icons.navigation_outlined,
              size: 90,
              color: Colors.orange,
            ),
            const SizedBox(height: 6.0,),
            const SizedBox(height: 6.0,),
            Center(
              child: Text(
                  'Livigate',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withAlpha(150),
                  ),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'let us guide you through our lovely city',
                  style: GoogleFonts.raleway(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[710],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 48,),
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
              ),
            ),
            const SizedBox(height: 6.0,),
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
              ),
            )
          ],
        ),
      ),

    );
  }
}
