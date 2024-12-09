// lib/main.dart
import 'package:flutter/material.dart';
import 'screen/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outfit On Call',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'GoogleFonts.openSans',
      ),
      home: const LoginScreen(),
    );
  }
}