
import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Homeeview(),);
  }
}
class Homeeview extends StatelessWidget{
  const Homeeview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(leading: Icon(Icons.arrow_back,color: Colors.red,),
        title: Text('Order Details',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold ),),
        backgroundColor: Colors.amber,centerTitle: true,),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 555,
            decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order No.0568',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('Active',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1 Nov , 10:30pm',),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('image/image2.png'),fit: BoxFit.cover,)),
                    ),
                   SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Strawberry Shake'),
                      SizedBox(height: 15,),
                      Text('3 items'),
                    ],
                    ),
                    Spacer(),
                    Text('\$20.00'),
                  ],
                ),
                SizedBox(height:20 ,),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('image/image1.png'),fit: BoxFit.cover,)),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Broccoli'),
                        SizedBox(height: 15,),
                        Text('3 items'),
                      ],
                    ),
                    Spacer(),
                    Text('\$12.00'),
                  ],
                ),
                SizedBox(height:20 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sup total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('\$32.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                  ],
                ),
                SizedBox(height:20 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tax and Fees',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('\$5.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  ],
                ),
                SizedBox(height:20 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('\$3.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                  ],
                ),
                SizedBox(height:40 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('\$40.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                  ],
                ),
                SizedBox(height:20 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red,),
                   child: Center(child: Text('cancel order',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                   ),
                  ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey,),
                      child: Center(child: Text('Trac driver',style: TextStyle(color: Colors.redAccent,fontWeight:FontWeight.bold),),
                      ),
                    )],
                )
              ],
            ),
            ),
        ],
      )
    );
  }
}