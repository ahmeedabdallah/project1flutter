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
      builder: (_, child) => SafeArea(
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Homeview()),
      ),
    );
  }
}

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("image/GettyImages-1315607788 2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hallo!'),
                    Text(
                      "Ahmed Abdallah",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                a(
                  name: "profile",
                  icon1: Icon(Icons.person),
                  icon2: Icon(Icons.chevron_right),
                ),
                a(
                  name: 'Change Password',
                  icon1: Icon(Icons.lock),
                  icon2: Icon(Icons.chevron_right),
                ),
                a(
                  name: 'Settings',
                  icon1: Icon(Icons.settings),
                  icon2: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class a extends StatelessWidget {
  const a({
    super.key,
    required this.name,
    required this.icon1,
    required this.icon2,
  });
  final String name;
  final Icon icon1;
  final Icon icon2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 63.h,
        width: 331.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.grey,
        ),
        child: Row(
          children: [
            icon1,
            SizedBox(width: 16),
            Text(name),
            Spacer(),
            IconButton(
              icon: icon2,
              onPressed: () {
                print('ok');
              },
            ),
          ],
        ),
      ),
    );
  }
}
