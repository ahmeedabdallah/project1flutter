import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('image/GettyImages-1315607788 2.png'),
                  fit:BoxFit.fill ,
                  height: 250,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    hintText: 'username',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Textfilled(
                name: "password",
                preicon: Icon(Icons.key),
                suficon: Icon(Icons.lock_open),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 40,
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
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Don’t Have An Account?'),SizedBox(width: 10,),TextButton(onPressed: (){}, child: Text('Register',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))],),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: 'Don’t Have An Account?'),
                    TextSpan(
                      text: '   Register',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
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
  const Textfilled({
    super.key,
    required this.name,
    required this.preicon,
    this.suficon,
  });
  final String name;
  final Icon preicon;
  final Icon? suficon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: preicon,
          suffixIcon: suficon,
          hintText: name,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        obscureText: true,
        obscuringCharacter: '*',
      ),
    );
  }
}
