import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Homeview(),);
  }
}
class Homeview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(leading: CircleAvatar(backgroundImage: AssetImage('image/GettyImages-1315607788 2.png'),),
    ),
    );
  }
}