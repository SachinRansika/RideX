import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Cars.dart';

import 'V.dart';
class Qc3 extends StatelessWidget {
  final double n2;
  final double n3;
  final double n4;
  final double p;
  final double m;
  final double n5;

  Qc3({
    Key? key,
    required this.n2,
    required this.n3,
    required this.n4,
    required this.m,
    required this.p,
    required this.n5,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double w = n2*12;

      double emi = 0.0;
      double rate = 0.0;
      String bank = "";
      double d = 0.0;
      String v = "";

    double downPayment = n5;
    double loanAmount = p - downPayment;

    if (loanAmount < 0) loanAmount = 0;

      if(p > 0 && w > 0) {

        // ---------- Private Banks ----------
        if (n4 >= 18 && n4 <= 60 && n3 >= 75000 && n5 >= 100000 && n5 <= 5000000 && n2 <= 7) {
          rate = 0.0095;
          bank = "Private bank A";
        }

        if (n4 >= 18 && n4 <= 60 && n2 <= 7 && (rate >= 0.0102 || rate == 0)) {
          rate = 0.01125;
          bank = "Private bank B";
        }

        if (n4 >= 18 && n4 <= 65 && n3 >= 100000 && n2 <= 7 && (rate >= 0.0137 || rate == 0)) {
          rate = 0.0137;
          bank = "Private bank C";
        }

        // ---------- Government Bank A ----------
        if (n4 >= 18 && n4 <= 60 && n2 <= 5 && (rate >= 0.01125 || rate == 0)) {
          rate = 0.01125;
          bank = "Government bank A private loan";
        }

        if (n4 >= 18 && n4 <= 60 && n2 > 5 && n2 <= 8 && (rate >= 0.01167 || rate == 0)) {
          rate = 0.01167;
          bank = "Government bank A private loan";
        }

        // ---------- Government Bank B ----------
        if (n4 >= 18 && n4 <= 58 && n2 <= 5 && n5 <= 8000000 && (rate >= 0.01 || rate == 0)) {
          rate = 0.01;
          bank = "Government bank B private loan";
        }

        if (n4 >= 18 && n4 <= 58 && n2 > 5 && n2 <= 10 && n5 <= 8000000 && (rate >= 0.0104 || rate == 0)) {
          rate = 0.0104;
          bank = "Government bank B private loan";
        }

        // ---------- Government Bank C ----------
        if (n3 >= 40000 && n2 <= 5 && (rate >= 0.0141 || rate == 0)) {
          rate = 0.0141;
          bank = "Government bank C private loan";
        }

        if (n3 >= 40000 && n2 > 5 && n2 < 7 && (rate >= 0.01125 || rate == 0)) {
          rate = 0.01125;
          bank = "Government bank C private loan";
        }

        if (n3 >= 40000 && n2 == 7 && (rate >= 0.01167 || rate == 0)) {
          rate = 0.01167;
          bank = "Government bank C private loan";
        }

        // ---------- Leasing Companies ----------
        if (n4 >= 18 && n4 <= 72 && (rate >= 0.0108 || rate == 0)) {
          rate = 0.0108;
          bank = "Leasing company A";
        }

        if (n4 >= 18 && n4 <= 60 && (rate >= 0.0134 || rate == 0)) {
          rate = 0.0134;
          bank = "Leasing company B";
        }

        if (n4 >= 18 && (rate >= 0.0134 || rate == 0)) {
          rate = 0.0134;
          bank = "Leasing company C";
        }


        emi = (loanAmount * rate * pow(1 + rate, w)) /
            (pow(1 + rate, w) - 1);
        d = m + emi;
      }

      if(p==4000000){
        v = "Suzuki Alto 2015";
      }else if(p == 4500000){
        v = "Suzuki Alto 2016";
      }else if(p == 5000000){
        v = "Toyota Vios 2004";
      }else if(p == 5500000){
        v = "Wagon R 2014";
      }else if(p == 6000000){
        v = "Wagon R 2015";
      }else if(p == 6500000){
        v = "Wagon R 2017";
      }else if(p == 7000000){
        v = "Toyota Aqua 2012";
      }else if(p == 7500000){
        v = "Toyota Vitz 2017";
      }else if(p == 8000000){
        v = "Toyota Vitz 2018";
      }else if(p == 8500000){
        v = "Toyota Axio 2015";
      }else if(p == 9000000){
        v = "Honda Grace 2015";
      }else if(p == 9500000){
        v = "Toyota Yaris 2024";
      }else if(p == 10000000){
        v = "Honda Vezel 2015";
      }else if(p == 10500000){
        v = "Toyota Axio 2017";
      }else if(p == 11000000){
        v = "Toyota Prius 2012";
      }else if(p == 11500000){
        v = "Toyota Axio 2018";
      }else if(p == 12000000){
        v = "Toyota Raize Z 2025";
      }

    return Scaffold(
      appBar: AppBar(
        title: Text("Quick Comparison Result", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              //height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFA6C3D9)

              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: Text(
                        "Least monthly monthly payment amount have $bank. It is Rs.${emi.toStringAsFixed(2)}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              width:  MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFD6E4F5),

              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                      "Your vehicle is $v.", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  SizedBox(height: 20),


                  Text(
                      "EMI + Average monthly maintenance cost : Rs.${d.toStringAsFixed(2)}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                    ),

                ],
              ),

            ),

            SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFFFFFF),
        child: const Icon(Icons.directions_car,color: Colors.black,),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Cars()),
          );
        },
      ),
    );


  }
}

