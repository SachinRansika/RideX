import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Cars.dart';


class Qc2 extends StatelessWidget {
  final double nt;
  final double w;

  Qc2({
    Key? key,
    required this.nt,
    required this.w,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // ---------------- Vehicle prices ----------------
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

    // Monthly maintenance cost
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

    for (double price in xs) {
      double totalMonthlyCost = (maintenance[price] ?? 0);

      //  Must save 30% salary
      if (totalMonthlyCost <= nt * 0.70) {
        vehicles.add({
          "price": price,
          "name": carNames[price],
          "total": totalMonthlyCost,
          "diff": (price - w).abs(),
        });
      }
    }


    // Sort by closest to expected price
    vehicles.sort((a, b) =>
        (a["diff"] as double).compareTo(b["diff"] as double));

    // Take best 4
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
          "No vehicles match your salary",
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
                      "Monthly Cost (Maintenance): Rs.${top4[i]["total"].toStringAsFixed(2)}",
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

