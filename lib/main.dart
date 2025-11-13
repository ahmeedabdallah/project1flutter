import 'package:aaa/feature/get_start/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false, home: Homeview());
        }));
  }
}
class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}
