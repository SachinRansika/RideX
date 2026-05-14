import 'package:flutter/material.dart';

import 'Qc.dart';
import 'Qc2.dart';

class Emi extends StatefulWidget {
  final double w;
  final double p;
  final double m;

  Emi({
    Key? key,
    required this.w,
    required this.p,
    required this.m,
  }) : super(key: key);

  @override
  State<Emi> createState() => _EmiState();
}

class _EmiState extends State<Emi> {
  late double t;

  @override
  void initState() {
    super.initState();
    t = widget.w;
  }


  final _formKey = GlobalKey<FormState>();
  final TextEditingController _downController = TextEditingController();
  final TextEditingController _yearsController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  final _formKey2 = GlobalKey<FormState>();
  final TextEditingController _salary2Controller = TextEditingController();
  String? selectedOption2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loan details", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _downController,
                    cursorColor: Color(0xFF97C7E8),
                    decoration: InputDecoration(
                      labelText: 'Your down payment',
                      labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                      hintText: 'Enter your down payment',
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
                        return 'Down payment is required';
                      }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                      if (!regex.hasMatch(value)) {
                        return 'Invalid: contains letters or other characters';
                      }
                      return null;
                    },

                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _yearsController,
                    cursorColor: Color(0xFF97C7E8),
                    decoration: InputDecoration(
                      labelText: 'Years',
                      labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                      hintText: 'Enter your loan repayment period',
                      hintStyle: TextStyle(color: Color(0xFF97C7E8)),

                      prefixIcon: Icon(Icons.calendar_month),
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
                      }String years1 = _yearsController.text;
                      double n21 = double.parse(years1);
                      if(n21>15){
                        return 'Years limit: 1-15';
                      }
                      return null;
                    },

                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _salaryController,
                    cursorColor: Color(0xFF97C7E8),
                    decoration: InputDecoration(
                      labelText: 'Monthly Income',
                      labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                      hintText: 'Enter your monthly income',
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
                        return 'Monthly income is required';
                      }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                      if (!regex.hasMatch(value)) {
                        return 'Invalid: contains letters or other characters';
                      }
                      return null;
                    },

                  ),

                  SizedBox(height: 20),
                  TextFormField(
                    controller: _ageController,
                    cursorColor: Color(0xFF97C7E8),
                    decoration: InputDecoration(
                      labelText: 'Age',
                      labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                      hintText: 'Enter your age',
                      hintStyle: TextStyle(color: Color(0xFF97C7E8)),

                      prefixIcon: Icon(Icons.calendar_month),
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
                        return 'Age is required';
                      }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                      if (!regex.hasMatch(value)) {
                        return 'Invalid: contains letters or other characters';
                      }String age1 = _ageController.text;
                      double n41 = double.parse(age1);
                      if(n41>65 || n41<18){
                        return 'Age limit: 18-65';
                      }
                      return null;
                    },

                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your job title :",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF97C7E8)),
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text("Private"),
                          value: "E",
                          groupValue: selectedOption2,
                          onChanged: (value) {
                            setState(() {
                              selectedOption2 = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text("Government"),
                          value: "F",
                          groupValue: selectedOption2,
                          onChanged: (value) {
                            setState(() {
                              selectedOption2 = value;
                            });
                          },
                        ),
                      ),
                    ],

                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF97C7E8),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      onPressed: () {


                        if (_formKey.currentState!.validate()) {
                          String years = _yearsController.text;
                          String salary = _salaryController.text;
                          String age = _ageController.text;
                          String down = _downController.text;

                          String r = selectedOption2 ?? '';

                          double n2 = double.parse(years);
                          double n3 = double.parse(salary);
                          double n4 = double.parse(age);
                          double n5 = double.parse(down);


                          if (selectedOption2 == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Please select all required options")),
                            );
                            return;
                          }

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Qc(
                            n2:n2,
                            n3:n3,
                            n4:n4,
                            n5: n5,
                            w: t,
                            p: widget.p,
                            m: widget.m,


                          )
                          ));

                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            Center(
              child: Text(
                  "If you do not need a loan, enter your monthly salary and click the next button.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF606271),),textAlign: TextAlign.center
              ),

            ),

            SizedBox(height: 20),
        Form(
          key: _formKey2,
            child: Column(
              children: [
                TextFormField(
                  controller: _salary2Controller,
                  cursorColor: Color(0xFF97C7E8),
                  decoration: InputDecoration(
                    labelText: 'Monthly Income',
                    labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                    hintText: 'Enter your monthly income',
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
                      return 'Monthly income is required';
                    }final regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
                    if (!regex.hasMatch(value)) {
                      return 'Invalid: contains letters or other characters';
                    }
                    return null;
                  },

                ),
              ],
            ),
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
                  String salary1 = _salary2Controller.text;

                  double nt = double.parse(salary1);

                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Qc2(
                        nt: nt,
                        w: t,

                      )));
                }
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF007DBA)),
              ),
            ),
            SizedBox(height: 80),

          ],
        ),
      ),
    );
  }
}
