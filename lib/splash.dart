import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main (){
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    builder: (_,child){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(child: Image(
            image: AssetImage('image/Group 1000002807.png'), height: 433.h,width: double.infinity,),),
        ),
      );
    },
  )
  );
}