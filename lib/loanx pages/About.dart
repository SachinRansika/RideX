import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RideX", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Text("About RideX", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20),
            Center(
              child: Text("RideX is your smart vehicle sales companion, helping you choose the best car and the most affordable loan. Whether you're buying for personal use, business, or family, RideX compares top options and finds the perfect match for your budget.", style: TextStyle(fontSize: 21,),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFA6C3D9),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " What RideX does:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text("- Recommends vehicles based on your needs and budget\n\n - Compares loan offers from trusted banks \n\n- Highlights the lowest monthly installment\n\n- Supports Sinhala and English for inclusive access", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                ],
              ),

            ),
            SizedBox(height: 20),
            Center(child: Text(" Why choose RideX?", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFA6C3D9),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("We believe in clarity, affordability, and confidence—so you drive away with the best deal.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
