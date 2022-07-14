import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

  final _passwordFormkey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  final _confirmPasswordFormkey = GlobalKey<FormState>();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
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
                 children: const [
                    Text(
                      'Sign Up now',
                       style: TextStyle(
                         fontSize: 30.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                    Icon(Icons.login_outlined,size: 30.0,),
                  ],
             ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      hintText: 'Your First Name',
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _lastNameFormkey,
                child: TextFormField(
                  controller: _lastNameController,
                  validator: (var value){
                    if(value!.isEmpty){
                      return 'Enter last';
                    }else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: 'Your last',
                      labelText: 'Last Name',
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      hintText: 'Your Username',
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      hintText: 'Your Password',
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState((){
                              _secureText = !_secureText;
                            });
                          },
                          icon: const Icon(Icons.security)
                      ),
                      border: const OutlineInputBorder()
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      hintText: 'Your Password',
                      labelText: 'Confirm Password',
                      labelStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState((){
                            _secureText = !_secureText;
                          });
                        },
                        icon: const Icon(Icons.security)
                    ),
                      border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (){
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
                  });
                },
                child: const Text('Sign Up')
            ),
          ],
        ),
      ),
    );
  }
}
