import 'package:flutter/material.dart';

class F3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/ts.png',height: 300, width: 320, fit: BoxFit.cover,
        ),
        Text("Compare EMI options instantly", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF6CB6E4)),textAlign: TextAlign.center,)
      ],
    );
  }
}