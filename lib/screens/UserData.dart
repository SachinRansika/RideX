import 'package:flutter/material.dart';

import 'package:sachinxs/services/UserSevices.dart';

import '../loanx pages/Home.dart';

class Userdata extends StatefulWidget {


  @override
  State<Userdata> createState() => _UserdataState();
}

class _UserdataState extends State<Userdata> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  bool _remember = false;

  //get UserSevices => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text("Enter Your Personal Details", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    SizedBox(height: 30),
                    Form(
                      key: _formKey,
                      child: Container(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _nameController,
                              cursorColor: Color(0xFF97C7E8),
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                                hintText: 'Enter your Name',
                                hintStyle: TextStyle(color: Color(0xFF97C7E8)),
              
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),),
                                // borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                ),
                                filled: true,
                                fillColor: Colors.grey[900],
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Name is required';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _emailController,
                              cursorColor: Color(0xFF97C7E8),
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                                hintText: 'Enter your Email Address',
                                hintStyle: TextStyle(color: Color(0xFF97C7E8)),
              
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),),
                                // borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                ),
                                filled: true,
                                fillColor: Colors.grey[900],
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email is required';
                                }if (!value.contains('@')) {
                                  return 'Enter a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              cursorColor: Color(0xFF97C7E8),
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Color(0xFF97C7E8)),
              
                                prefixIcon: Icon(Icons.password),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),),
                                // borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                ),
                                filled: true,
                                fillColor: Colors.grey[900],
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                }if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _confirmController,
                              obscureText: true,
                              cursorColor: Color(0xFF97C7E8),
                              decoration: InputDecoration(
                                labelText: 'Confirm password',
                                labelStyle: TextStyle(color: Color(0xFF97C7E8)),
                                hintText: 'Confirm your password',
                                hintStyle: TextStyle(color: Color(0xFF97C7E8)),
              
                                prefixIcon: Icon(Icons.password),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),),
                                // borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF97C7E8)),
                                ),
                                filled: true,
                                fillColor: Colors.grey[900],
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Confirm password is required';
                                }if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
              
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Checkbox(
                                  value: _remember,
                                  onChanged: (value) {
                                    setState(() {
                                      _remember = value!;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Remember me for the next time",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            GestureDetector(
                              onTap: ()async{
                                if(_formKey.currentState!.validate()){
                                  String name = _nameController.text;
                                  String email = _emailController.text;
                                  String password = _passwordController.text;
                                  String confirm = _confirmController.text;
              
              
                                  //store the user details in shared preferences
                                  await UserSevices.storeUserDetails(
                                    name: name,
                                    email: email,
                                    password: password,
                                    confirm : confirm,
                                    context: context,
              
                                  );
              
                                  //Navigate to the Home screen
                                  if (password == confirm) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ),
                                    );
                                  }
                                }
                              },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Container(
                                    height: MediaQuery.of((context)).size.height*0.06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0xFF6CB6E4),
                                    ),
                                    child: Center(
                                      child: Text("Next", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                    ),
                                  ),
                                ),
              
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

    );
  }
}
