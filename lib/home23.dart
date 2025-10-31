
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aaa/core/height,width.dart';
import 'package:aaa/core/color.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:Size(375,812),
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeVew(),
        );
      },
    );
  }
}

class HomeVew extends StatelessWidget {
  const HomeVew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right:10.0,top: 30,left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60.r,
                  width: 60.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("image/GettyImages-1315607788 2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.sp)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hallo!',style: TextStyle(fontSize: 12.sp),),
                    Text(
                      "Ahmed Abdallah",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize:16.sp ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 34.h),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "your today's tasks",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "almost done",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Text(
                            "80",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 36.h,
                            width: 121.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "View Tasks",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.h),
                Row(
                  children: [
                    Text(
                      "In Progress",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 22.sp),
                    Container(
                      height: 23.w,
                      width:22.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.greenAccent,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
                Expanded(child: ListView(scrollDirection: Axis.horizontal,children: [ TaskGroup(name1: 'Work Task',name2: 'Add New Features',pathimage: 'image/Group 1000002858.png',backgroundcolor: Colors.black,primerycolor: Colors.white,),
                  TaskGroup(name1: 'personal task',name2: 'Improve my English skills by trying to speek',pathimage: 'image/Group 01.png',backgroundcolor: Color(0xffCEEBDC),primerycolor: Colors.black,),
                  TaskGroup(name1: 'Home task',name2: 'Add new feature for Do it app and commit',pathimage: 'image/Group 33.png',backgroundcolor: Color(0xffFFE4F2),primerycolor: Colors.black,)]

                )),
            SizedBox(height: 10),
      Row(children: [
        Text('Task Groups')
      ],),
            SizedBox(height: 10),
            Row(
        children: [
        Container(
        padding: EdgeInsets.all(10),
        height: 40,
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
          child: Row(
            children: [Image(image: AssetImage("image/Group 1.png")),
            SizedBox(width: 5,),
            Text('Personal Task'),
              Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.greenAccent,
                ),
                alignment: Alignment.center,
                child: Text(
                  "5",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          ),
        ],
        ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [Image(image: AssetImage("image/group2.png")),
                      SizedBox(width: 5,),
                      Text('Home Task'),
                      Spacer(),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.pink[50],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [Image(image: AssetImage("image/Group3.png")),
                      SizedBox(width: 5,),
                      Text('Work Task'),
                      Spacer(),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage('image/final.png'))
            ],)
          ],
        ),
      ),
    );
  }
}
class TaskGroup extends StatelessWidget {
  const TaskGroup({super.key ,required this.name1,required this.name2,required this.pathimage,required this.backgroundcolor,required this.primerycolor});
 final String  name1;
  final String  name2;
  final String  pathimage;
  final Color backgroundcolor;
  final Color primerycolor;


  @override
  Widget build(BuildContext context) {
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.topRight,
      padding: EdgeInsets.all(10.r),
      height: Coontainer.height.h,
      width: Coontainer.width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: backgroundcolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                name1,
                style: TextStyle(
                  color: primerycolor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Image(
                image: AssetImage(pathimage),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  name2,
                  style: TextStyle(color:primerycolor ),
                ),
              ),
            ],
          ),
        ],
      ),
      );
  }
}

