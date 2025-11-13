import 'package:aaa/core/helper/my_navigator.dart';
import 'package:aaa/feature/auth/cubit/login_cubit/login_state.dart';
import 'package:aaa/feature/auth/views/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/views/home.dart';
import '../cubit/login_cubit/login_cubit.dart';

class Login extends StatelessWidget {
  const Login({super.key});

 static var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>LoginCubit(),
      child: BlocBuilder<LoginCubit,LoginState>(
        builder: (context,state)=>
        Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('image/GettyImages-1315607788 2.png'),
                      fit: BoxFit.fill,
                      height: 250,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: LoginCubit.get(context).username,
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
                           return 'this filed is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    TextFiled(
                      name: "password",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(icon:Icon(Icons.lock_open),onPressed:LoginCubit.get(context).changePassState ,),
                      controller: LoginCubit.get(context).pass,
                      obscure: LoginCubit.get(context).obscure,
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
                          onPressed: () { if (formKey.currentState?.validate()??false){
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
        ),
      ),
    );
  }
}

class TextFiled extends StatelessWidget {
  const TextFiled({
    super.key,
    required this.name,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    required this.obscure
  });
  final String name;
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final TextEditingController controller;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: name,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        validator: (String? value){
          if (value==null||value.isEmpty) {
            return 'this failed is required';
          }
          return null;
        },
        obscureText: obscure,
        obscuringCharacter: '*',
      ),
    );
  }
}
