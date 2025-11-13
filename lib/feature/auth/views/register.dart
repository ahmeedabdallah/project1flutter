import 'package:aaa/feature/auth/cubit/register_cubit/register_cubit.dart';
import 'package:aaa/feature/auth/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/my_navigator.dart';
import '../cubit/register_cubit/register_state.dart';

class Register extends StatelessWidget {
   const Register({super.key});
   static var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: BlocProvider(
              create: (BuildContext context) =>RegisterCubit(),
              child: BlocBuilder<RegisterCubit,RegisterState>(
                builder: (context,state)=>
                 Column(
                  children: [
                    Image(
                      image: AssetImage('image/GettyImages-1315607788 2.png'),
                      fit: BoxFit.fill,
                      height: 200,
                      width: double.infinity,
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
                    TextField(
                      obscure: RegisterCubit.get(context).passObscure,
                      controller: RegisterCubit.get(context).pass,
                      name: "password",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(icon:Icon(Icons.lock_open),onPressed:RegisterCubit.get(context).passRegister ,),
                    ),
                    TextField(
                      obscure: RegisterCubit.get(context).confirmPassObscure,

                      controller: RegisterCubit.get(context).confirmPass,
                      name: "Confirm password",
                      prefixIcon: Icon(Icons.key_outlined),
                      suffixIcon: IconButton(icon:Icon(Icons.lock),onPressed:RegisterCubit.get(context).confirmPassRegister ),
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
                            if (formKey.currentState?.validate() ?? false) {
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
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({
    super.key,
    required this.name,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    required this.obscure,
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
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: name,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        controller: controller,
        obscureText: obscure,
        obscuringCharacter: '*',
      ),
    );
  }
}
