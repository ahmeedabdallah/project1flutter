import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Scaffold(
        appBar: AppBar(title: Text('profile',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.red,image:DecorationImage(image: AssetImage('image/image3.jpg')) ),
                ),
              ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('User Name',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person_outlined),
                  Text('My profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Image(image: AssetImage('image/Vector 4.png'))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Text('My Orders',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Image(image: AssetImage('image/Vector 4.png'))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.favorite_border),
                  Text('My Favorites',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Image(image: AssetImage('image/Vector 4.png'))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Image(image: AssetImage('image/Vector 4.png'))
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('image/Line 14.png'))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width:30,),
                  Icon(Icons.logout_sharp),
                  Text('    Log Out',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage('image/Group 1000002834.png'))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home_outlined),
                  Icon(Icons.shopping_cart_outlined),
                  Icon(Icons.person_2_outlined)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Home'),
                  Text('items'),
                  Text('profile'),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
