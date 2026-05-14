import 'package:flutter/material.dart';
import 'package:sachinxs/services/UserSevices.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "";
  String email = "";
 @override
 void initState(){
   super.initState();
   UserSevices.getUserDetails().then((value)
   {
     if(value['name']!= null && value['email']!= null){
       setState(() {
         name = value['name']!;
         email = value['email']!;
       });

     }
   });

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold),),
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
                            "Name : $name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
                        ),
                        Text(
                            "Email : $email", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black)
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
