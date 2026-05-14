import 'package:flutter/material.dart';

class F1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/rd.png', height: 200,width: 250, fit: BoxFit.cover,
        ),
      ],
    );
  }
}
