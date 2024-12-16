import 'package:flutter/material.dart';
import 'package:outfitoncall/view/login_view.dart';
import 'package:outfitoncall/view/onboarding_view.dart';
import 'package:outfitoncall/view/registration_view.dart';
import 'package:outfitoncall/view/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Outfit On Call',
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: '/onboarding', // Set onboarding as the initial route
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
