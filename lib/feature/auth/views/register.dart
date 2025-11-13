import 'package:aaa/feature/auth/views/login.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/my_navigator.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('image/GettyImages-1315607788 2.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue)),
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                      hintText: 'username',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'required';
                      }
                      return null;
                    },
                  ),
                ),
                Textfilled(
                  name: "password",
                  preicon: Icon(Icons.key),
                  suficon: Icon(Icons.lock_open),
                ),
                Textfilled(
                  name: "Confirm password",
                  preicon: Icon(Icons.key_outlined),
                  suficon: Icon(Icons.lock),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withAlpha(120),
                          offset: Offset(0, 8),
                          blurRadius: 15,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        if (formkey.currentState?.validate() ?? false) {
                          MyNavigator.goto(context, Login());
                        }
                      },
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already Have An Account?'),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        MyNavigator.goto(context, Login(),
                            type: NavigatorType.push);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Textfilled extends StatelessWidget {
  const Textfilled({
    super.key,
    required this.name,
    required this.preicon,
    this.suficon,
  });
  final String name;
  final Icon preicon;
  final Icon? suficon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: preicon,
          suffixIcon: suficon,
          hintText: name,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        obscureText: true,
        obscuringCharacter: '*',
      ),
    );
  }
}
