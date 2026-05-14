import 'package:flutter/material.dart';
import 'package:sachinxs/loanx%20pages/Emi.dart';
import 'package:sachinxs/loanx%20pages/Government.dart';
import 'package:sachinxs/loanx%20pages/Leasing.dart';
import 'package:sachinxs/loanx%20pages/Private.dart';


import '../services/UserSevices.dart';
import 'About.dart';
import 'V.dart';

class Page1 extends StatefulWidget {

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late double p=0;
  late double m=0;
  final PageController _controller = PageController();

  final _formKey = GlobalKey<FormState>();


  final TextEditingController _uController = TextEditingController();
  final TextEditingController _dController = TextEditingController();

  String? selectedOption;
  String? selectedOption1;
  String? selectedOption2;



  String name = "";
  @override
  void initState(){
    UserSevices.getUserDetails().then((value) {
      if (value['name'] != null) {
        setState(() {
          name = value['name']!;
        });
      }
    });
super.initState();
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RideX", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width:  MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFB0DFE3),

              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to RideX", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "Find your dream vehicle and the smartest loan option, all in one place.",overflow: TextOverflow.visible, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                ],
              ),

            ),
            SizedBox(height: 20),
            Container(
              width:  MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF7BB7D1),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello $name,", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                        Text("Fill out the form below to select the best vehicle for your budget. If you are able to select your vehicle, click 'Select your vehicle'.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271))
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),



            SizedBox(height: 35),
            Text("Fill this form bellow", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
            SizedBox(height: 20),

            Center(
              child: Text(
              "Here, we will select the most suitable vehicle for your budget, saving you 30% of your monthly salary.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.center
              ),

            ),

            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  TextFormField(
                    controller: _dController,
                    cursorColor: Color(0xFF97C7E8),
                    decoration: InputDecoration(
                      labelText: 'Your value',
                      labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                      hintText: 'Enter your looking value',
                      hintStyle: TextStyle(color: Color(0xFF97C7E8)),

                      prefixIcon: Icon(Icons.money),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xFF97C7E8)),
                      ),
                      filled: true,
                      fillColor: Colors.grey[900],
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Value is required';
                      }
                        final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                         double n = double.parse(value);
                      if (n < 4000000 || n > 12000000) {
                        return 'Limit: Rs4000k–Rs12000k';
                      }

                      return null;
                    },

                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Choose your category :",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF97C7E8)),
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text("Car"),
                          value: "A",
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text("Bike"),
                          value: "B",
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                    ],

                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text(" Three-wheel"),
                          value: "C",
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text("Van"),
                          value: "D",
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                    ],

                  ),
                  SizedBox(height: 20),
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

                      if (_formKey.currentState!.validate()) {
                        String down = _dController.text;

                        String a = selectedOption ?? 'A';
                        
                        
                        double w = double.parse(down);
                        

                        if (selectedOption == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please select all required options")),
                          );
                          return;
                        }
                        if(a=='A'){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Emi(
                            w: w,
                            p: p,
                            m: m,

                          )));
                        }

                        /*if(num2<=9000000 && num2>=7000000 && a=='A'){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Com1(
                          
                          
                        )));}else if(num2<=7000000 && num2>=4000000 && a=='A'){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Com2(


                          )));}else if(num2<=12000000 && num2>=9000000 && a=='A'){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Com3(


                          )));}*/
                        
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => V()));
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
                        "Select your vehicle", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
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
            SizedBox(height: 20),


                  Center(
                       child: Text(
                            "Do you want to see all the loan companies? Just click your preferred company below to begin.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.center
                        ),

                  ),

            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Private()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFD6E4F5),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Private Banks", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,)),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Government()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFE4B9C2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Government Banks", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,)),
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
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Leasing()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F0E7),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Leasing Companies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,)),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                    },
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFA6C3D9),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("RideX", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFB0DFE3),

              ),

            ),

          ],
              ),
            ),
    );
  }
}


