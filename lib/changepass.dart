import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});
  var formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (_, child) {
        return ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (_,child)=> MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: SafeArea(
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('image/GettyImages-1315607788 2.png'),
                          fit: BoxFit.fill,
                          height: 200,
                          width: double.infinity,
                        ),
                      ),

                      Textfilled(name: 'Old pass',
                      ),
                      Textfilled(
                        name: ' New pass',
                      ),
                      Textfilled(
                        name: ' Confirm pass',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green.withOpacity(.6),
                                offset: Offset(0, 8),
                                blurRadius: 15,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: FloatingActionButton(
                            onPressed: (){formkey.currentState?.validate();},
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Save',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Textfilled extends StatelessWidget {
  const Textfilled({super.key,required this.name});
   final String name;
  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(decoration:InputDecoration(hintText: name,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),),
        );
  }
}

