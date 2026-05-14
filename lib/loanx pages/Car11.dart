import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Emi2.dart';
import 'package:sachinxs/widgets/LineWagonr.dart';

import '../widgets/LineWagonr2.dart';
import '../widgets/LineWagonr3.dart';
import '../widgets/LineWagonr4.dart';
import 'Emi.dart';

class Car11 extends StatefulWidget {
  const Car11({super.key});

  @override
  State<Car11> createState() => _Car11State();
}

class _Car11State extends State<Car11> {
  double p = 7500000;
  double m = 4000;
  late double w=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toyota Yaris 2024", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Toyota Yaris 2024 Specifications", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Color(0xFF97C7E8)),textAlign: TextAlign.left,),
            SizedBox(height: 10),
            Text("- Brand : Toyota\n- Model : Yaris\n- Year of Manufacture : 2024\n- Condition : Reconditioned\n- Transmission : Automatic\n- Body type : Hatchback\n- Fuel type : Petrol\n- Engine capacity : 990 cc\n- Mileage : 11,500 km", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            SizedBox(height: 20),
            Text(
                "The chart below shows how maintenance costs vary depending on mileage. This includes fuel costs and assumes that servicing should be done every 5000km.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.left
            ),
            SizedBox(height: 20),
            LineWagonr4(),
            SizedBox(height: 20),
            //Text("Hello $name,", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
            Text(
                "If you want to get a loan, click the select button.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.left
            ),
            SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF97C7E8),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: () {
                  double p = 9500000;
                  double m = 43210;

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Emi2(
                    p:p,
                    m:m,
                    w: w,
                  )));

                },
                child: Text(
                  "Select",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
                ),
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}