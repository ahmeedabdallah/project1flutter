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
      body: Column(

          children: [Expanded(flex:2,child:Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: Text("Ahmed",) ,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border(top: BorderSide(color: Colors.white)),
                shape: BoxShape.rectangle,
              ),

            )
            ],
          ), ),
      Expanded(flex : 1,child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text("INFO",)

              ],
            ),),

            Expanded(flex : 1,child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text("age 23"),
                 Text("23"),

              ],
            ), ) ,


            Expanded(flex : 3,child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(child: Text("save"),
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white),
              )

              ],
            ), ) ,
        ],
        ),
    );
  }
}
