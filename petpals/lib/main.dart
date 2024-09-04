import 'package:petpals/users/dog_details_page.dart';
import 'package:flutter/material.dart';

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
        body: DogDetailsPage(), // Add the LoginForm here
      ),
    );
  }
}
