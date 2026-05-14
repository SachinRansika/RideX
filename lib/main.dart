import 'package:flutter/material.dart';

import 'package:sachinxs/services/UserSevices.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'services/Wrapper.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();

  runApp(LoanX());
}
class  LoanX extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: UserSevices.checkname(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }else{
            bool hasName = snapshot.data ?? false;
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                brightness: Brightness.dark
              ),
              home: Wrapper(
                 showMainScreen: hasName,),

            );
          }
        });

  }
}

