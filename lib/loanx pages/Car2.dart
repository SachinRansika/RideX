import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Emi2.dart';

import '../widgets/LineAqua.dart';

class Car2 extends StatefulWidget {
  const Car2({super.key});

  @override
  State<Car2> createState() => _Car2State();
}

class _Car2State extends State<Car2> {
  double p = 7500000;
  double m = 4000;
  late double w=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toyota Aqua 2012", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Toyota Aqua 2012 Specifications", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF97C7E8)),textAlign: TextAlign.left,),
            SizedBox(height: 10),
            Text("- Brand : Toyota\n- Model : Aqua\n- Trim / Edition : X Urban G Led\n- Year of Manufacture : 2015\n- Condition : Used\n- Transmission : Automatic\n- Body type : Hatchback\n- Fuel type : Hybrid\n- Engine capacity : 1,500 cc\n- Mileage : 112,000 km", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            SizedBox(height: 20),
            Text(
                "The chart below shows how maintenance costs vary depending on mileage. This includes fuel costs and assumes that servicing should be done every 5000km.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.left
            ),
            SizedBox(height: 20),
            LineAqua(),
            SizedBox(height: 20),
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
                  double p = 7000000;
                  double m = 35298;

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