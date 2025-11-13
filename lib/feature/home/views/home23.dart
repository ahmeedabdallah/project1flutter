
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homeview());
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
                  height: 50,
                  width: 50,
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
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                      SizedBox(height: 18),
                      Row(
                        children: [
                          Text(
                            "80",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "View Tasks",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "In Progress",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 25),
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
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                  Taskgroup(name1: "Work Task", name2: 'Add New Features', pathimage: 'image/Group 1000002858.png', backgroundcolor: Colors.black, textcolor: Colors.white),
                  Taskgroup(name1: "personal Task", name2: 'Improve my English skills by trying to speek', pathimage: 'image/Group 01.png', backgroundcolor: Color(0xffCEEBDC), textcolor: Colors.black),
                  Taskgroup(name1: "Work Task", name2: 'Add new feature for Do It app and commit it', pathimage: 'image/Group 33.png', backgroundcolor: Color(0xffFFE4F2), textcolor: Colors.black),],),
            ),
            SizedBox(height: 10),
      Row(children: [
        Text('Task Groups')
      ],),
            SizedBox(height: 18),
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
class Taskgroup extends StatelessWidget {
  const Taskgroup({super.key,required this.name1,required this.name2, required this.pathimage,required this.backgroundcolor, required this.textcolor});
  final String name1;
  final String name2;
  final String pathimage;
  final Color backgroundcolor;
  final Color textcolor;


  @override
  Widget build(BuildContext context) {
return  Container(
  margin: EdgeInsets.symmetric(horizontal: 10),

  alignment: Alignment.topRight,
  padding: EdgeInsets.all(10),
  height: 80,
  width: 250,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
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
              color: textcolor,
              fontSize: 16,
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
              style: TextStyle(color: textcolor),
            ),
          ),
        ],
      ),
    ],
  ),
);
  }
}

