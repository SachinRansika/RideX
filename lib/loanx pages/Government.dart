import 'package:flutter/material.dart';

import 'Gov1.dart';
import 'Gov2.dart';


class Government extends StatefulWidget {
  @override
  State<Government> createState() => _GovernmentState();
}

class _GovernmentState extends State<Government> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Government Banks", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE4B9C2)
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: Text(
                        "When you choose a government bank, the way you can obtain a loan depends on your employment sector. If you are employed in the government sector, you can get both a private loan as well as a government loan. For that, you can click on one of the two options below based on your needs and check it. If you are a permanent employee in the private sector, you can only obtain a private loan. Therefore, please click on 'Private'.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Gov1()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFA7B2E6),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Private Loan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Gov2()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFDBC0E7),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Government Loan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
