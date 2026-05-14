import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Home.dart';

import 'Car1.dart';
import 'Car10.dart';
import 'Car11.dart';
import 'Car12.dart';
import 'Car13.dart';
import 'Car14.dart';
import 'Car15.dart';
import 'Car16.dart';
import 'Car17.dart';
import 'Car2.dart';
import 'Car3.dart';
import 'Car4.dart';
import 'Car5.dart';
import 'Car6.dart';
import 'Car7.dart';
import 'Car8.dart';
import 'Car9.dart';

class Cars extends StatefulWidget {
  const Cars({super.key});

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            //alto 2015
            Center(
              child: Text("Suzuki Alto 2015", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/al.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("This model is a compact hatchback designed for affordability, fuel efficiency, and ease of driving in city conditions. The VXI trim with Automatic Gear Shift (AGS) makes it especially convenient for urban users who prefer hassle-free driving.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 4,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car5()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),


            //alto 2016
            Center(
              child: Text("Suzuki Alto 2016", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/gh.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("This model is a compact hatchback designed for affordability, fuel efficiency, and ease of driving in city conditions. The VXI trim with Automatic Gear Shift (AGS) makes it especially convenient for urban users who prefer hassle-free driving.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 4,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car6()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //vios 2004


            Center(
              child: Text("Toyota Vios 2004", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/vi.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("Toyota Vios 2004 is a compact sedan known for its reliability, fuel efficiency, and low maintenance costs. It features a 1.5L petrol engine, smooth automatic or manual transmission options, and a comfortable interior suitable for daily commuting. With Toyota’s proven durability, the 2004 Vios is a popular choice for city driving and first-time car owners.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 5,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car12()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),

            // wagon r 2014

            Center(
              child: Text("Suzuki Wagon R 2014", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/wr1.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("It’s a compact hatchback (kei car) designed for practicality, fuel efficiency, and city driving. The 2017 model introduced updated styling, hybrid options, and improved safety features, making it one of Suzuki’s most popular small cars in Japan and South Asia.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 5,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car4()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //wagon r 2015

            Center(
              child: Text("Suzuki Wagon R 2015", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/hs.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("It’s a compact hatchback (kei car) designed for practicality, fuel efficiency, and city driving. The 2017 model introduced updated styling, hybrid options, and improved safety features, making it one of Suzuki’s most popular small cars in Japan and South Asia.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 6,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car9()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //wagon r 2017


            Center(
              child: Text("Suzuki Wagon R 2017", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/wr2.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("It’s a compact hatchback (kei car) designed for practicality, fuel efficiency, and city driving. The 2017 model introduced updated styling, hybrid options, and improved safety features, making it one of Suzuki’s most popular small cars in Japan and South Asia.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 6,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car10()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),


            //aqua 2012


            Center(
              child: Text("Toyota Aqua 2012", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/wf.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("It’s a stylish hybrid hatchback designed for urban driving, combining fuel efficiency with sporty aesthetics. The “X Urban” trim adds rugged body cladding, higher ground clearance, and LED lighting for a more premium look compared to the standard Aqua models.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 7,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car2()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //vitz 2017


            Center(
              child: Text("Toyota Vitz 2017", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/fw.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("It’s a compact hatchback designed for city driving, known for its reliability, fuel efficiency, and modern styling. The “1st Edition” trim emphasizes practicality with a balance of comfort and affordability, making it a popular choice in markets like Sri Lanka and Japan.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 7,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car3()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //vitz 2018


            Center(
              child: Text("Toyota Vitz 2018", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/fw.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("It’s a compact hatchback designed for city driving, known for its reliability, fuel efficiency, and modern styling. The “1st Edition” trim emphasizes practicality with a balance of comfort and affordability, making it a popular choice in markets like Sri Lanka and Japan.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 8,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car13()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //axio 2015


            Center(
              child: Text("Toyota Axio 2015", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/art.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("The Toyota Axio 2013 is a reliable and fuel‑efficient sedan, ideal for daily commuting and family use. It offers comfort and practicality, though its simple design may not appeal to those seeking a sportier look", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 8,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car1()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //grace 2015


            Center(
              child: Text("Honda Grace 2015", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/gr.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("Honda Grace 2015 is a compact hybrid sedan that offers excellent fuel efficiency, smooth performance, and modern comfort. Powered by a 1.5L hybrid engine with Honda’s i-DCD system, it delivers quiet driving and low emissions. The 2015 Grace is well known for its reliability, stylish design, and advanced safety features, making it ideal for economical city and daily use.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 9,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),

            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car14()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),

            SizedBox(height: 30),

            // wagon r 2018

            Center(
              child: Text("Toyota Yaris 2024", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/sa.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("Toyota Yaris 2024 is a compact hybrid-focused hatchback known for excellent fuel efficiency, smooth city driving, and modern tech. It features a 1.5 L hybrid powertrain with CVT, stylish design, advanced safety systems (Toyota Safety Sense), and comfortable interior with smartphone integration — ideal for urban and daily use.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 9,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car11()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //vezel 2015


            Center(
              child: Text("Honda Vezel 2015", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/vrt.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("The Honda Vezel Orange Package 2015 is a stylish hybrid SUV with sporty orange accents, fuel efficiency, and modern safety features. It offers comfort and practicality, though its compact size may limit cargo space.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 10,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car7()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //axio 2017



            Center(
              child: Text("Toyota Axio 2017", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/art.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("The Toyota Axio 2017 is a reliable and fuel‑efficient sedan, ideal for daily commuting and family use. It offers comfort and practicality, though its simple design may not appeal to those seeking a sportier look", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 10,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car15()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //prius 2012


            Center(
              child: Text("Toyota Prius 2012", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/prt.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("The Toyota Prius S Grade 2013 is a fuel‑efficient hybrid sedan offering comfort and practicality, though its modest styling may not suit those seeking a sportier car. It remains a popular choice for eco‑conscious drivers thanks to its proven reliability and low running costs.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 11,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car8()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //axio 2018


            Center(
              child: Text("Toyota Axio 2018", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/art.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("The Toyota Axio 2018 is a reliable and fuel‑efficient sedan, ideal for daily commuting and family use. It offers comfort and practicality, though its simple design may not appeal to those seeking a sportier look", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 11,500,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car16()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 30),

            //raize z 2025

            Center(
              child: Text("Toyota Raize z 2025", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/art.png', width: 250, fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Center(
              child: Text("Toyota Raize Z 2025 is a compact SUV with a sporty design, modern features, and excellent fuel efficiency. It offers comfortable city driving, advanced safety, and smart technology, making it ideal for daily urban use.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            Center(
              child: Text("Price : Rs 12,000,000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            ),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF97C7E8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Car17()));

              },
              child: Text(
                "Select",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),

            SizedBox(height: 80),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFFFFFF),
        child: const Icon(Icons.home,color: Colors.black,),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Home()),
          );
        },
      ),
    );
  }
}
