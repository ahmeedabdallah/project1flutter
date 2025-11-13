import 'package:aaa/core/helper/my_navigator.dart';
import 'package:aaa/feature/auth/views/register.dart';
import 'package:flutter/material.dart';
import '../../home/views/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('image/GettyImages-1315607788 2.png'),
                    fit: BoxFit.fill,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                      hintText: 'username',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (String? value){
                      if (value==null||value.isEmpty) {
                       return 'this faild is requird';
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
                            blurRadius: 15)
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: FloatingActionButton(
                      onPressed: () { if (formkey.currentState?.validate()??false){
                        MyNavigator.goto(context, Home(),type: NavigatorType.pushReplacement);
                      }
                },
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t Have An Account?'),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {MyNavigator.goto(context, Register());},
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ))
                  ],
                ),
                SizedBox(height: 20),
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
        validator: (String? value){
          if (value==null||value.isEmpty) {
            return 'this faild is requird';
          }
          return null;
        },
        obscureText: true,
        obscuringCharacter: '*',
      ),
    );
  }
}
