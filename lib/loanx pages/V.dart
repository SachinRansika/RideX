import 'package:flutter/material.dart';

import 'Cars.dart';

class V extends StatefulWidget {
  const V({super.key});

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicles", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Text("Choose your category", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cars()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFD6E4F5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Cars", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap:(){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Government()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFE4B9C2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Bikes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                     // Navigator.push(context, MaterialPageRoute(builder:(context)=>Leasing()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F0E7),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Vans", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFA6C3D9),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Three-wheels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,)),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
