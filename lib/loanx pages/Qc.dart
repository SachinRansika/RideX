import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Cars.dart';

import 'V.dart';
class Qc extends StatelessWidget {
  final double n2;
  final double n3;
  final double n4;
  final double p;
  final double m;
  final double n5;
  final double w;

  Qc({
    Key? key,
    required this.n2,
    required this.n3,
    required this.n4,
    required this.m,
    required this.p,
    required this.n5,
    required this.w,
  }) : super(key: key);




  /*@override
  Widget build(BuildContext context) {
    List<double> items = [];
    List<double> items2 = [];
    List<double> pp = [];
    List<double> pt = [];

     double p1;
     double p2;
     double p3;
     double p4;

// Original x values
    List<double> xs = [
      12000000,11500000,11000000,10500000,10000000,
      9500000,9000000,8500000,8000000,7500000,
      7000000,6500000,6000000,5500000,5000000,
      4500000,4000000
    ];



    // Step 1: Store vehicles info in a map
    final Map<double, String> carNames = {
      4000000: "Suzuki Alto 2015",
      4500000: "Suzuki Alto 2016",
      5000000: "Vios 2004",
      5500000: "Suzuki Wagon R 2014",
      6000000: "Suzuki Wagon R 2015",
      6500000: "Suzuki Wagon R 2017",
      7000000: "Toyota Aqua 2012",
      7500000: "Toyota Vitz 2017",
      8000000: "Toyota Vitz 2018",
      8500000: "Toyota Axio 2015",
      9000000: "Grace 2015",
      9500000: "Toyota Yaris 2024",
      10000000: "Honda Vezel 2015",
      10500000: "Toyota Axio 2017",
      11000000: "Toyota Prius 2012",
      11500000: "Toyota Axio 2018",
      12000000: "Raize z 2025",
    };

    final Map<double, double> basePrice = {
      4000000: 39593,
      4500000: 42121,
      5000000: 37723,
      5500000: 40003,
      6000000: 42385,
      6500000: 51158,
      7000000: 35298,
      7500000: 46623,
      8000000: 42321,
      8500000: 43013,
      9000000: 54351,
      9500000: 43210,
      10000000: 43167,
      10500000: 49451,
      11000000: 50452,
      11500000: 50163,
      12000000: 39813,
    };

// Step 2: List of all vehicle prices
    //final List<double> ps = [p1, p2, p3, p4];
    final List<double> ws = List.filled(4, n2*12); // Loan months

// Step 3: Calculate EMI for each vehicle
    List<Map<String, dynamic>> vehicles = [];

    for(int i = 0; i < xs.length; i++) {
      double p = xs[i];
      double w = ws[i];

      double emi = 0.0;
      double rate = 0.0;
      String bank = "";

      double vehiclePrice = xs[i];
      double downPayment = n5;
      double loanAmount = vehiclePrice - downPayment;

      if (loanAmount < 0) loanAmount = 0;

      if(p > 0 && w > 0) {
        // ---------- Private Banks ----------
        if (n4 >= 18 && n4 <= 60 && n3 >= 75000 && n5 >= 100000 &&
            n5 <= 5000000 && n2 <= 7) {
          rate = 0.0095;
          bank = "Private bank A";
        }

        if (n4 >= 18 && n4 <= 60 && n2 <= 7 && (rate >= 0.0102 || rate == 0)) {
          rate = 0.01125;
          bank = "Private bank B";
        }

        if (n4 >= 18 && n4 <= 65 && n3 >= 100000 && n2 <= 7 &&
            (rate >= 0.0137 || rate == 0)) {
          rate = 0.0137;
          bank = "Private bank C";
        }

        // ---------- Government Bank A ----------
        if (n4 >= 18 && n4 <= 60 && n2 <= 5 && (rate >= 0.01125 || rate == 0)) {
          rate = 0.01125;
          bank = "Government bank A private loan";
        }

        if (n4 >= 18 && n4 <= 60 && n2 > 5 && n2 <= 8 &&
            (rate >= 0.01167 || rate == 0)) {
          rate = 0.01167;
          bank = "Government bank A private loan";
        }

        // ---------- Government Bank B ----------
        if (n4 >= 18 && n4 <= 58 && n2 <= 5 && n5 <= 8000000 &&
            (rate >= 0.01 || rate == 0)) {
          rate = 0.01;
          bank = "Government bank B private loan";
        }

        if (n4 >= 18 && n4 <= 58 && n2 > 5 && n2 <= 10 && n5 <= 8000000 &&
            (rate >= 0.0104 || rate == 0)) {
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
      }
      double r = xs[i];
      double j = emi + (basePrice[p] ?? 0);
      pp.add(j);
      for(int i=0; i<pp.length; i++){
        if(n3*30/100>=j){
          pt.add(r);

        }

      }
      // Calculate y values
      List<double> items3 = pt.map((x) => (w - x) / w).toList();

// Split positive & negative
      for (var y in items3) {
        if (y >= 0) {
          items.add(y);
        } else {
          items2.add(y);
        }
      }

// Fill default values if empty
      if (items.isEmpty) {
        items.addAll([1.0, 2.0, 3.0, 4.0]);
      }
      if (items2.isEmpty) {
        items2.addAll([-1.0, -2.0, -3.0, -4.0]);
      }

// ---------- POSITIVE MIN ----------
      double min1 = items.reduce((a, b) => a < b ? a : b);

// second min (safe)
      double min11 = items.where((e) => e != min1).isNotEmpty
          ? items.where((e) => e != min1).reduce((a, b) => a < b ? a : b)
          : min1; // fallback if all values same

// ---------- NEGATIVE MIN (max in negatives)
      double min2 = items2.reduce((a, b) => a > b ? a : b);

// second max (safe)
      double min22 = items2.where((e) => e != min2).isNotEmpty
          ? items2.where((e) => e != min2).reduce((a, b) => a > b ? a : b)
          : min2; // fallback if all values same

// ---------- FINAL CALCULATION ----------
      p1 = w - min1 * w;
      p2 = w - min11 * w;
      p3 = w - min2 * w;
      p4 = w - min22 * w;


      final List<double> ps = [p1, p2, p3, p4];

      for(int i = 0; i<ps.length; i++) {
        double p = ps[i];
        vehicles.add({
          "price": p,
          "emi": emi,
          "total": emi + (basePrice[p] ?? 0),
          "name": carNames[p] ?? "Unknown",
          "bank": bank
        });
      }
    }

// Step 4: Sort vehicles by total cost (EMI + base)
    vehicles.sort((a, b) => (a["total"] as double).compareTo(b["total"] as double));

// Step 5: Extract top 4 cheapest
    final e1 = vehicles[0]["name"];
    final min1 = vehicles[0]["total"];
    final b1 = vehicles[0]["bank"];

    final e2 = vehicles[1]["name"];
    final min2 = vehicles[1]["total"];
    final b2 = vehicles[1]["bank"];

    final e3 = vehicles[2]["name"];
    final min3 = vehicles[2]["total"];
    final b3 = vehicles[2]["bank"];

    final e4 = vehicles[3]["name"];
    final min4 = vehicles[3]["total"];
    final b4 = vehicles[3]["bank"];




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
                        "1. $e1 (Best Option) \n EMI + Average monthly maintenance cost :  Rs.${min1.toStringAsFixed(2)}\nBank / Leasing: $b1", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
          ],
        ),
      ),
            SizedBox(height: 20),
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
                        "2. $e2 \n EMI + Average monthly maintenance cost :  Rs.${min2.toStringAsFixed(2)}\n Bank / Leasing: $b2", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
                        "3. $e3 \n EMI + Average monthly maintenance cost :  Rs.${min3.toStringAsFixed(2)}\nBank / Leasing: $b3", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
                        "4. $e4 \n EMI + Average monthly maintenance cost :  Rs.${min4.toStringAsFixed(2)}\nBank / Leasing: $b4", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Center(
              child: Text(
                  "If you want to see the details of the cars, click here below.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.center
              ),

            ),

            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Cars()));
              },

              child: Container(
                width:  MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFD6E4F5),

                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Vehicles", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Click here", style: TextStyle(fontSize: 15,  color: Colors.black),
                      ),
                    ),


                  ],
                ),

              ),
            ),
            SizedBox(height: 80),
      ],
        ),
    ),
      );


  }
}*/
  @override
  Widget build(BuildContext context) {

    //Vehicle prices
    final List<double> xs = [
      4000000, 4500000, 5000000, 5500000, 6000000, 6500000,
      7000000, 7500000, 8000000, 8500000, 9000000, 9500000,
      10000000, 10500000, 11000000, 11500000, 12000000
    ];

    final Map<double, String> carNames = {
      4000000: "Suzuki Alto 2015",
      4500000: "Suzuki Alto 2016",
      5000000: "Toyota Vios 2004",
      5500000: "Wagon R 2014",
      6000000: "Wagon R 2015",
      6500000: "Wagon R 2017",
      7000000: "Toyota Aqua 2012",
      7500000: "Toyota Vitz 2017",
      8000000: "Toyota Vitz 2018",
      8500000: "Toyota Axio 2015",
      9000000: "Honda Grace 2015",
      9500000: "Toyota Yaris 2024",
      10000000: "Honda Vezel 2015",
      10500000: "Toyota Axio 2017",
      11000000: "Toyota Prius 2012",
      11500000: "Toyota Axio 2018",
      12000000: "Toyota Raize 2025",
    };

    //Monthly maintenance cost
    final Map<double, double> maintenance = {
      4000000: 39593,
      4500000: 42121,
      5000000: 37723,
      5500000: 40003,
      6000000: 42385,
      6500000: 51158,
      7000000: 35298,
      7500000: 46623,
      8000000: 42321,
      8500000: 43013,
      9000000: 54351,
      9500000: 43210,
      10000000: 43167,
      10500000: 49451,
      11000000: 50452,
      11500000: 50163,
      12000000: 39813,
    };

    List<Map<String, dynamic>> vehicles = [];
    double months = n2 * 12;

    for (double price in xs) {

      double loanAmount = price - n5;
      if (loanAmount < 0) loanAmount = 0;

      double rate=0;
      String bank='';

      //Private Banks
      if (n4 >= 18 && n4 <= 60 && n3 >= 75000 && loanAmount >= 100000 &&
          loanAmount <= 5000000 && n2 <= 7) {
        rate = 0.0095;
        bank = "Private bank A";
      }

      if (n4 >= 18 && n4 <= 60 && n2 <= 7 && (rate >= 0.0102 || rate == 0)) {
        rate = 0.01125;
        bank = "Private bank B";
      }

      if (n4 >= 18 && n4 <= 65 && n3 >= 100000 && n2 <= 7 &&
          (rate >= 0.0137 || rate == 0)) {
        rate = 0.0137;
        bank = "Private bank C";
      }

      //Government Banks
      if (n4 >= 18 && n4 <= 60 && n2 <= 5 && (rate >= 0.01125 || rate == 0)) {
        rate = 0.01125;
        bank = "Government bank A private loan";
      }

      if (n4 >= 18 && n4 <= 60 && n2 > 5 && n2 <= 8 &&
          (rate >= 0.01167 || rate == 0)) {
        rate = 0.01167;
        bank = "Government bank A private loan";
      }

      if (n4 >= 18 && n4 <= 58 && n2 <= 5 && loanAmount <= 8000000 &&
          (rate >= 0.01 || rate == 0)) {
        rate = 0.01;
        bank = "Government bank B private loan";
      }

      if (n4 >= 18 && n4 <= 58 && n2 > 5 && n2 <= 10 && loanAmount <= 8000000 &&
          (rate >= 0.0104 || rate == 0)) {
        rate = 0.0104;
        bank = "Government bank B private loan";
      }


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

      //Leasing Companies
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

      double emi = (loanAmount * rate * pow(1 + rate, months)) /
          (pow(1 + rate, months) - 1);

      double totalMonthlyCost = emi + (maintenance[price] ?? 0);

      //Must save 30% salary
      if (totalMonthlyCost <= n3 * 0.70) {
        vehicles.add({
          "price": price,
          "name": carNames[price],
          "emi": emi,
          "total": totalMonthlyCost,
          "bank": bank,
          "diff": (price - w).abs(),
        });
      }
    }

    //Sort by closest to expected price
    vehicles.sort((a, b) =>
        (a["diff"] as double).compareTo(b["diff"] as double));

    //Take best 4
    final top4 = vehicles.take(4).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quick Comparison Result",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: top4.isEmpty
          ? const Center(
        child: Text(
          "No vehicles match your salary and savings requirement.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      )
          : SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(top4.length, (i) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFA6C3D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "${i + 1}. ${top4[i]["name"]}\n"
                      "Price: Rs.${top4[i]["price"]}\n"
                      "Monthly Cost (EMI + Maintenance): Rs.${top4[i]["total"].toStringAsFixed(2)}\n"
                      "Bank / Leasing: ${top4[i]["bank"]}\n"
                      "EMI: Rs.${top4[i]["emi"].toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }),
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

