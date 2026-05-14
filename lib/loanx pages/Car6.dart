import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Emi2.dart';
import 'package:sachinxs/widgets/LineAlto.dart';

import '../widgets/LineAlto2.dart';
import 'Emi.dart';

class Car6 extends StatefulWidget {
  const Car6({super.key});

  @override
  State<Car6> createState() => _Car6State();
}

class _Car6State extends State<Car6> {
  double p = 7500000;
  double m = 4000;
  late double w=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suzuki Alto 2016", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Suzuki Alto 2016 Specifications", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            SizedBox(height: 10),
            Text("- Brand : Suzuki\n- Model : Alto\n- Trim / Edition : K10 Automatic VXI\n- Year of Manufacture : 2016\n- Condition : Used\n- Transmission : Automatic\n- Body type : Hatchback\n- Fuel type : Petrol\n- Engine capacity : 998 cc\n- Mileage : 120,000 km", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            SizedBox(height: 20),
            Text(
                "The chart below shows how maintenance costs vary depending on mileage. This includes fuel costs and assumes that servicing should be done every 5000km.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.left
            ),
            SizedBox(height: 20),
            LineAlto2(),
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
                  double p = 4500000;
                  double m = 42121;

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