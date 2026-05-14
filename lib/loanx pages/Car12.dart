import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Emi2.dart';

import '../widgets/LineAqua.dart';

class Car12 extends StatefulWidget {
  const Car12({super.key});

  @override
  State<Car12> createState() => _Car12State();
}

class _Car12State extends State<Car12> {
  double p = 7500000;
  double m = 4000;
  late double w=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toyota Vios 2004", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Toyota Vios 2004 Specifications", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF97C7E8)),textAlign: TextAlign.left,),
            SizedBox(height: 10),
            Text("- Brand:Toyota\n- Model:Vios \n- Year of Manufacture:2004 \n- Condition:Used\n- Transmission:Automatic \n- Body type:Saloon\n- Fuel type:Petrol \n- Engine capacity:1,500 cc \n- Mileage:205,000 km", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
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
                  double p = 5000000;
                  double m = 37723;

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