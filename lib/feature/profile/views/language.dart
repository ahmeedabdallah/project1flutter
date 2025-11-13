import 'package:aaa/core/helper/my_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Language extends StatefulWidget {
  const Language({super.key});
  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
   bool value =true;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.chevron_left),onPressed:()=>MyNavigator.goback(context,) ,),
            title: Text('Settings'),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Language', style: TextStyle(fontSize: 20.sp)),
                Switch(value: value, onChanged: (bool x){
                  setState(() {
                    value=x;
                  });
                })
              ],
            ),

          ),
        ),
      ),
    );
  }
}
