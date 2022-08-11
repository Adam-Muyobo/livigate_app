import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _firstNameFormkey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();

  final _lastNameFormkey = GlobalKey<FormState>();
  final TextEditingController _lastNameController = TextEditingController();

  final _userNameFormkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();

  final _emailFormkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  final _passwordFormkey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  final _confirmPasswordFormkey = GlobalKey<FormState>();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        foregroundColor: Colors.orange,
        backgroundColor: Colors.orangeAccent[100],
        title: const Text('Sign up'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Text(
                      'Join Us!',
                       style: GoogleFonts.bebasNeue(
                         fontSize: 50.0,
                         color: Colors.orange,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                  ],
             ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Form(
                    key: _firstNameFormkey,
                    child: TextFormField(
                      controller: _firstNameController,
                      validator: (var value){
                        if(value!.isEmpty){
                          return 'Enter First Name';
                        }else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
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
                    key: _lastNameFormkey,
                    child: TextFormField(
                      controller: _lastNameController,
                      validator: (var value){
                        if(value!.isEmpty){
                          return 'Enter last name.';
                        }else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'Last Name',
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
                    key: _userNameFormkey,
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
                            fontSize: 20,
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
                    key: _emailFormkey,
                    child: TextFormField(
                      controller: _emailController,
                      validator: (var value){
                        if(value!.isEmpty){
                          return 'Enter Email';
                        }else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Form(
                    key: _passwordFormkey,
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: _secureText,
                      validator: (var value){
                        if(value!.isEmpty){
                          return 'Enter Password';
                        }else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState((){
                                  _secureText = !_secureText;
                                });
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: Colors.orange,
                              )
                          ),
                          border: InputBorder.none,
                      ),

                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Form(
                    key: _confirmPasswordFormkey,
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: _secureText,
                      validator: (var value){
                        if(value!.compareTo(_passwordController.text) != 0){
                          return 'Does not match password.';
                        }else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: const TextStyle(
                            color: Colors.orange,
                            fontSize: 20
                          ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState((){
                                _secureText = !_secureText;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye, color: Colors.white,)
                        ),
                          border: InputBorder.none,
                      ),
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
                      print('First Name Validation: ${_firstNameFormkey.currentState!.validate()}');
                    }
                    if (kDebugMode) {
                      print('Last Name Validation: ${_lastNameFormkey.currentState!.validate()}');
                    }
                    if (kDebugMode) {
                      print('Username Validation: ${_userNameFormkey.currentState!.validate()}');
                    }
                    if (kDebugMode) {
                      print('Password Validation: ${_passwordFormkey.currentState!.validate()}');
                    }
                    if (kDebugMode) {
                      print('Confirm Password Validation: ${_confirmPasswordFormkey.currentState!.validate()}');
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
                      'Sign Up',
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
    );
  }
}
