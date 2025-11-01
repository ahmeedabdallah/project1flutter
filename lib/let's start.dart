import 'package:aaa/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size (375,812),
      builder:(_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homeview(),);
      },
    );
  }
}
class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(width: 301.w,height: 342.h,
                  child: SvgPicture.asset('image/OBJECTS012.svg')),
            ),
            SizedBox(height: 60.4.h,),
            Text("Welcome To \n Do It !",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24.sp),),
            SizedBox(height: 40.h,),
            Text("Ready to conquer your tasks? Let's Do \n It together.",textAlign: TextAlign.center, style: TextStyle(color: Color(0xff6E6A7C),fontSize: 16.sp,fontWeight: FontWeight.bold),),
            SizedBox(height: 68.h,),
            Container(
          width: double.infinity,
          height: 48.h,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.green.withOpacity(.6),offset: Offset(0, 8),blurRadius: 15)],
            borderRadius: BorderRadius.circular(15),
          ),
          child: FloatingActionButton(
            onPressed: () => print('ok'),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Let’s Start',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),


          ],
        ),
      ),
    ));
  }
}
