import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_,child){
        return  MaterialApp(
          debugShowCheckedModeBanner:false ,
          home: Homeview(),);
      },
    );
  }
}
class Homeview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(leading: Padding(
      padding:  REdgeInsets.all(10),
      child: CircleAvatar(backgroundImage: AssetImage('image/GettyImages-1315607788 2.png'),radius: 50.r,),
    ),
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('Hello!',style: TextStyle(fontSize: 12.sp,color: Color(0xff24252C)),),
        Text('Ahmed Abdallah',style: TextStyle(fontSize: 16.sp),)
      ],),
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
              child: FloatingActionButton(onPressed: ()=>print('ok'), child:CircleAvatar(child:  Icon(Icons.save,color: Colors.green,),))
    ),
    ]
      ),
    );
  }
}