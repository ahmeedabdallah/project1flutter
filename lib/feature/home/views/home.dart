import 'package:aaa/core/helper/clickaple.dart';
import 'package:aaa/core/helper/my_navigator.dart';
import 'package:aaa/feature/add_task/views/add%20task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../profile/views/profile.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: Padding(
      padding: const EdgeInsets.all(5),
      child: Clickaple(ontap: ()=>MyNavigator.goto(context,Profile()),
        child: CircleAvatar(backgroundImage: AssetImage('image/GettyImages-1315607788 2.png'),radius: 50.r,),
      ),
    ),
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Hello!',style: TextStyle(fontSize: 12.sp,color: Color(0xff24252C)),),
            Text('Ahmed Abdallah',style: TextStyle(fontSize: 16.sp),)
        ],),
      ),
    ),
      body: Stack(
        children: [
          Center(child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('There are no tasks yet,ta'),
        Text('Press the button'),
        Text('To add New Task '),
        SizedBox(height: 70.h,),
        Image(image: AssetImage('image/OBJECTS.png'),width: 200.w,)
        ]
    ),
          ),
          Positioned( right: 20.r,
            bottom: 20.r,
              child: FloatingActionButton(onPressed: ()=>MyNavigator.goto(context, AddTask()), child:CircleAvatar(child:  Icon(Icons.save,color: Colors.green,),))
    ),
    ]
      ),
    );
  }
}