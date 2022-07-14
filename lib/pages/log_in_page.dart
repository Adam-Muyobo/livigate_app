import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

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
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Log In'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'Log in now',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.login,size: 30.0,),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
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
          const SizedBox(height: 6.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formkey,
              child: TextFormField(
                validator: (var value){
                  if(value!.isEmpty) {
                    return 'Enter password';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    errorText: null,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState((){
                            _negateSecureText();
                          });
                        },
                        icon: const Icon(Icons.security)
                    ),
                      labelStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      border: const OutlineInputBorder()
                  ),
                  obscureText: _secureText,
                  keyboardType: TextInputType.visiblePassword,
                ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
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
              child: const Text('Log In')
          ),
        ],
      ),
    );
  }
}
