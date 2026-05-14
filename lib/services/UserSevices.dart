import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSevices {
  //Store the userName and password using shared preferences
  static Future<void> storeUserDetails({
    required String name,
      required String email,
      required String password,
      required String confirm,
      required BuildContext context,
  }
      ) async {
    //check if the password and confirm password are the same
    if (password != confirm) {
      //show a snackbar with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password and Confirm Password do not match"),
        ),
      );
      return;
    }
    //Store the username and email in shared preferences
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('name', name);
      await prefs.setString('email', email);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User Details stored successfully"),
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  //Get the username and email from shared preferences
  static Future<Map<String, String>> getUserDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name');
    String? email = prefs.getString('email');
    return {'name': name!, 'email': email!};
  }

  //Check if the username is stored in shared preferences
  static Future<bool> checkname() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name');
    return name != null;
  }

  //remove the username and email from shared preferences
  static Future<void> clearUserDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('name');
    await prefs.remove('email');
  }

  }