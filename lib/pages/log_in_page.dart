import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  bool _secureText = true;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _userFormkey = GlobalKey<FormState>();

  void _negateSecureText(){
    _secureText = !_secureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        foregroundColor: Colors.orange,
        backgroundColor: Colors.orangeAccent[100],
        title: const Text('Log In'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back, We missed you.',
                      style: GoogleFonts.bebasNeue(
                        fontSize: 26.0,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Form(
                      key: _userFormkey,
                      child: TextFormField(
                        controller: _usernameController,
                        validator: (var value){
                          if(value!.isEmpty){
                            return 'Enter username';
                          }else {
                           return null;
                          }
                        },
                        decoration: const InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 20
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Form(
                      key: _formkey,
                      child: TextFormField(
                        controller: _passwordController,
                        validator: (var value){
                          if(value!.isEmpty) {
                            return 'Enter password';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                            ),
                            errorText: null,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState((){
                                    _negateSecureText();
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.orange,
                                )
                            ),
                              border: InputBorder.none,
                          ),
                          obscureText: _secureText,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/home');
                    setState((){
                      if (kDebugMode) {
                        print('Value of password: ${_userFormkey.currentState!.validate()}');
                      }
                      if (kDebugMode) {
                        print('Value of password: ${_formkey.currentState!.validate()}');
                      }
                    }
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[50],
                        ),
                      ),
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
