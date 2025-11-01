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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: DateDropdown(),);
        }
    );
  }
}
  class DateDropdown extends StatefulWidget {
  const DateDropdown({super.key});

  @override
  State<DateDropdown> createState() => _DateDropdownState();
  }


class _DateDropdownState extends State<DateDropdown> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  List<Row> tasktype = [
    Row(
      children: [
        Image(image: AssetImage("image/Group 1.png")),
        SizedBox(width: 5),
        Text('Personal Task'),
      ],
    ),
    Row(
      children: [
        Image(image: AssetImage("image/group2.png")),
        SizedBox(width: 5),
        Text('Home Task'),
      ],
    ),
    Row(
      children: [
        Image(image: AssetImage("image/Group3.png")),
        SizedBox(width: 5),
        Text('Work Task'),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.chevron_left),
          title: Text('Add Task'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image(
                    image: AssetImage('image/GettyImages-1315607788 2.png'),
                    fit: BoxFit.cover,
                    height: 207.h,
                    width: 261.w,
                  ),
                ),
              ),
              SizedBox(height: 29.h),
              Textfilled(name: "Title"),
              Textfilled(name: "Description"),
              Padding(
                padding: REdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    hintText: 'Group',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  items: tasktype
                      .map((i) => DropdownMenuItem(child: i, value: i))
                      .toList(),
                  onChanged: (value) => print(value),
                ),
              ),
              SizedBox(height: 10.h,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _selectDate(context),
                    icon: Icon(Icons.calendar_today_outlined), label: Text(
                      selectedDate == null
                          ? 'Select End Time'
                          : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                  ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 40.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(0, 8),
                        blurRadius: 15.r,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: FloatingActionButton(
                    onPressed: () => print('ok'),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Add Task',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Textfilled extends StatelessWidget {
  const Textfilled({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: TextFormField(
        maxLines: null,
        minLines: 1,
        expands: false,
        decoration: InputDecoration(
          hintText: name,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
        ),
      ),
    );
  }
}


