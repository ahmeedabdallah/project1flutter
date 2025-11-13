import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/my_navigator.dart';
import 'letisstart.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 2),
        () => MyNavigator.goto(context, LetisStart(),
            type: NavigatorType.pushReplacement));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('image/Group 1000002807.png'),
          height: 433.h,
          width: double.infinity,
        ),
      ),
    );
  }
}
