import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  UpdateProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
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

              Textfilled(
                name: 'username',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Textfilled extends StatelessWidget {
  const Textfilled({super.key,required this.name});
   final String name;
  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(decoration:InputDecoration(hintText: name,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),),
        );
  }
}

