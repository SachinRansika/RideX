import 'package:flutter/material.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFA6C3D9)

              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                      "Contact Us", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                  Text(
                      "Email : ridexvehicles@gmail.com", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
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
