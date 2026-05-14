import 'package:flutter/material.dart';

class F2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        SizedBox(height: 30,),
        Image.asset(
          'assets/images/st.png', height:300,width: 320, fit: BoxFit.cover,
        ),
        Text("Compare and choose vehicle easily", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xFF6CB6E4)),textAlign: TextAlign.center,)
      ],
    );
  }
}