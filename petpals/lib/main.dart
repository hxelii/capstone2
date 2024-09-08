import 'package:flutter/material.dart';
import 'package:petpals/users/dog_details_page.dart';
import 'package:petpals/users/home_page.dart';
import 'package:petpals/users/login_page.dart';
import 'package:petpals/users/pet_profile_page.dart';
import 'package:petpals/users/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //final niceColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main.dart',
      home: Scaffold(
        body: LoginPage(), // Add the LoginForm here
      ),
    );
  }
}
