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
          children: [
            Expanded(flex:1,child: Row(
              children: [
                Expanded(flex: 1,child: Text("x"),),
                Expanded(flex: 1,child: Text("x")),
                Expanded(flex: 1,child: Text("x")),

              ],

            ),),

           Expanded(flex : 1,child:Row(
             children: [
               Expanded(flex: 1,child: Text("x"),),
               Expanded(flex: 1,child: Text("x")),
               Expanded(flex: 1,child: Text("x")),

             ],
           ), ) ,
            Expanded(flex:1,child:  Row(
              children: [
                Expanded(flex: 1,child: Text("x"),),
                Expanded(flex: 1,child: Text("x")),
                Expanded(flex: 1,child: Text("x")),

              ],
            ))

          ],
        ),
      ),
    );
  }
}
