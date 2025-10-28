import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(debugShowCheckedModeBanner: false, home: Homeview()));
  }
}

class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Home page'),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        actions: [Text('data'), Icon(Icons.search)],
      ),
      body: Container(
        color: Colors.green,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(height: 100, width: 100,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              border: Border(top: BorderSide(color: Colors.white)),
              shape: BoxShape.rectangle,


            ),

          )
          ],
        ),
      ),
    );
  }
}
