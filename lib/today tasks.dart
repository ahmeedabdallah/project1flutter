import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (_, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: Homeview());
      },
    );
  }
}

class Homeview extends StatefulWidget {
  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  List<Map<String, dynamic>> tasks = [
    {
      "title": "Go to supermarket to buy some milk & eggs",
      "status": "In Progress",
      "color": Colors.orange,
    },
    {
      "title": "Go to supermarket to buy some milk & eggs",
      "status": "Done",
      "color": Colors.green,
    },
    {
      "title": "Add new feature for Do It app and commit it",
      "status": "Done",
      "color": Colors.green,
    },
    {
      "title": "Improve my English skills by trying to speak",
      "status": "Missed",
      "color": Colors.red,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text('Tasks', style: TextStyle(fontSize: 19.sp)),
        centerTitle: true,
      ),
      body: Padding(
        padding: REdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            SizedBox(height: 28.h),
            Row(
              children: [
                Text('Results'),
                SizedBox(width: 10.w),
                Container(
                  alignment: Alignment.center,
                  width: 15.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xff14995426),
                  ),
                  child: Text("${tasks.length}"),
                ),
              ],
            ),
            SizedBox(height: 28.h),
            Expanded(
              child: ListView(
                children: [
                  task(
                    name1: "Go to supermarket to buy some milk & eggs",
                    name2: "In Progress",
                    imag: Image(image: AssetImage("image/Group3.png")),
                  ),
                  task(
                    name1: "Go to supermarket to buy some milk & eggs",
                    name2: "Done",
                    imag: Image(image: AssetImage("image/Group3.png")),
                  ),
                  task(
                    name1: "Add new feature for Do It app and commit it",
                    name2: "Done",
                    imag: Image(image: AssetImage("image/group2.png")),
                  ),
                  task(
                    name1: "Improve my English skills by trying to speek",
                    name2: "Missed",
                    imag: Image(image: AssetImage("image/Group 01.png")),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconButton(onPressed: ()=>{}, icon:Icon( Icons.filter,color: Colors.green,))],)
          ],
        ),
      ),
    );
  }
}
class task extends StatelessWidget {
  const task({
    super.key,
    required this.name1,
    required this.name2,
    required this.imag,
  });
  final String name1;
  final String name2;
  final Image imag;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      width: 334.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.grey,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage('image/GettyImages-1315607788 2.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: 60.w,
            height: 60.h,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name1, maxLines: null, softWrap: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 73.w,
                      height: 17.h,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(name2),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    imag,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
