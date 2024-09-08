import 'package:flutter/material.dart';
import 'package:petpals/users/home_page.dart';
import 'package:petpals/users/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main.dart',
      home: Scaffold(
        body: HomePage(), // Add the LoginForm here
      ),
    );
  }
}
