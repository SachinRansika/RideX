import 'dart:math';

import 'package:flutter/material.dart';

class Gov2 extends StatefulWidget {

  @override
  State<Gov2> createState() => _Gov2State();
}

class _Gov2State extends State<Gov2> {
  final _formKey1 = GlobalKey<FormState>();
  final TextEditingController _amountController1 = TextEditingController();
  final TextEditingController _yearsController1 = TextEditingController();

  final _formKey2 = GlobalKey<FormState>();
  final TextEditingController _amountController2 = TextEditingController();
  final TextEditingController _yearsController2 = TextEditingController();

  final _formKey3 = GlobalKey<FormState>();
  final TextEditingController _amountController3 = TextEditingController();
  final TextEditingController _yearsController3 = TextEditingController();

  bool showResult = false;
  late double num01;
  late double num02;
  late double e1;
  double? monthlyPayment;

  bool showResult1 = false;
  late double num001;
  late double num002;
  late double e2;
  double? monthlyPayment1;

  bool showResult2 = false;
  late double num0001;
  late double num0002;
  late double e3;
  double? monthlyPayment2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Government Loan Section", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Text("Bank A", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20),
            Center(
              child: Text("If you're using “Government Bank A” as a placeholder, one of the most prominent private banking services in Sri Lanka is offered by Bank A, known for its exclusive and personalized wealth management under the Private Banking Centre.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFDBC0E7),
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interest Rates", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                      "Yearly Interest Rate - 0.0%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                  Text(
                      "Monthly Interest Rate - 0.0%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                ],
              ),

            ),
            SizedBox(height: 20),
            Center(
              child: Text("Fill out form below to find out the monthly and annual payment amounts.", style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Form(
                key: _formKey1,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _amountController1,
                      cursorColor: Color(0xFF97C7E8),
                      decoration: InputDecoration(
                        labelText: 'Amount',
                        labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                        hintText: 'Enter your Amount',
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
                          return 'Amount is required';
                        }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _yearsController1,
                      cursorColor: Color(0xFF97C7E8),
                      decoration: InputDecoration(
                        labelText: 'Years',
                        labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                        hintText: 'Enter your expected payment period',
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
                          return 'Time period is required';
                        }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                        return null;
                      },

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



                        if (_formKey1.currentState!.validate()) {
                          String amount = _amountController1.text;
                          String years = _yearsController1.text;

                          print(amount);
                          print(years);
                          num01 = double.parse(amount);
                          num02 = double.parse(years);
                          e1 = (num01 * 0.0 * pow(1 + 0.0, num02*12)) / (pow(1 + 0.0, num02*12) - 1);
                          setState(() {
                            showResult = true;
                            monthlyPayment = e1;

                          });

                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
                      ),

                    ),
                    SizedBox(height: 20),

                    if (showResult && monthlyPayment != null)
                      Text(
                        'Monthly Payment: Rs ${monthlyPayment!.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18, color: Color(0xFFD6E4F5), fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                      ),
                  ],
                )
            ),
            //bank B
            SizedBox(height: 70),
            Center(child: Text("Bank B", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20),
            Center(
              child: Text("If you're using “Government Bank B” as a placeholder, one of the most prominent private banking services in Sri Lanka is offered by Bank B, known for its exclusive and personalized wealth management under the Private Banking Centre.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFDBC0E7),
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interest Rates", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                      "Yearly Interest Rate - 0.0%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                  Text(
                      "Monthly Interest Rate - 0.0%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                ],
              ),

            ),
            SizedBox(height: 20),
            Center(
              child: Text("Fill out form below to find out the monthly and annual payment amounts.", style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Form(
                key: _formKey2,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _amountController2,
                      cursorColor: Color(0xFF97C7E8),
                      decoration: InputDecoration(
                        labelText: 'Amount',
                        labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                        hintText: 'Enter your Amount',
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
                          return 'Amount is required';
                        }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _yearsController2,
                      cursorColor: Color(0xFF97C7E8),
                      decoration: InputDecoration(
                        labelText: 'Years',
                        labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                        hintText: 'Enter your expected payment period',
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
                          return 'Time period is required';
                        }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                        return null;
                      },

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


                        if (_formKey2.currentState!.validate()) {
                          String amount = _amountController2.text;
                          String years = _yearsController2.text;

                          print(amount);
                          print(years);
                          num001 = double.parse(amount);
                          num002 = double.parse(years);
                          e2 = (num001 * 0.0 * pow(1 + 0.0, num002*12)) / (pow(1 + 0.0, num002*12) - 1);

                          setState(() {
                            showResult1 = true;
                            monthlyPayment1 = e2;
                          });

                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
                      ),
                    ),
                    SizedBox(height: 20),

                    if (showResult1 && monthlyPayment1 != null)
                      Text(
                        'Monthly Payment: Rs ${monthlyPayment1!.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18, color: Color(0xFFD6E4F5), fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                      ),
                  ],
                )
            ),

            //bank c
            SizedBox(height: 70),
            Center(child: Text("Bank C", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20),
            Center(
              child: Text("If you're using “Government Bank C” as a placeholder, one of the most prominent private banking services in Sri Lanka is offered by Bank C, known for its exclusive and personalized wealth management under the Private Banking Centre.", style: TextStyle(
                fontSize: 20,
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFDBC0E7),
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interest Rates", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                      "Yearly Interest Rate - 0.0%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                  Text(
                      "Monthly Interest Rate - 0.0%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black)
                  ),
                ],
              ),

            ),
            SizedBox(height: 20),
            Center(
              child: Text("Fill out form below to find out the monthly and annual payment amounts.", style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
            Form(
                key: _formKey3,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _amountController3,
                      cursorColor: Color(0xFF97C7E8),
                      decoration: InputDecoration(
                        labelText: 'Amount',
                        labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                        hintText: 'Enter your Amount',
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
                          return 'Amount is required';
                        }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _yearsController3,
                      cursorColor: Color(0xFF97C7E8),
                      decoration: InputDecoration(
                        labelText: 'Years',
                        labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                        hintText: 'Enter your expected payment period',
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
                          return 'Time period is required';
                        }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                        if (!regex.hasMatch(value)) {
                          return 'Invalid: contains letters or other characters';
                        }
                        return null;
                      },

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


                        if (_formKey3.currentState!.validate()) {
                          String amount = _amountController3.text;
                          String years = _yearsController3.text;

                          print(amount);
                          print(years);
                          num0001 = double.parse(amount);
                          num0002 = double.parse(years);
                          e3 = (num0001 * 0.0 * pow(1 + 0.0, num0002*12)) / (pow(1 + 0.0, num0002*12) - 1);

                          setState(() {
                            showResult2 = true;
                            monthlyPayment2 = e3;
                          });

                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
                      ),
                    ),
                    SizedBox(height: 20),
                    if(showResult2 && monthlyPayment2 != null)
                      Text(
                        'Monthly Payment: Rs ${monthlyPayment2!.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18, color: Color(0xFFD6E4F5), fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                      ),
                    //SizedBox(height: 30),
                  ],
                )
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}