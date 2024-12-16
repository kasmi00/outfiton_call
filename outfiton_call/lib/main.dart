import 'package:flutter/material.dart';
import 'package:outfitoncall/view/dashboard_view.dart';
import 'package:outfitoncall/view/login_view.dart';
import 'package:outfitoncall/view/onboarding_view.dart';
import 'package:outfitoncall/view/registration_view.dart';

void main() {
  runApp(outfitoncall());
}

class outfitoncall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set Onboarding as the initial screen
      initialRoute: '/onboarding', 
      routes: {
        '/login': (context) => const LoginScreen(), // Login screen route
        '/dashboard': (context) => const DashboardScreen(), // Dashboard route
        '/register': (context) => const RegistrationView(), // Registration route
        '/onboarding': (context) => const OnboardingScreen(), // Onboarding screen route
      },
      debugShowCheckedModeBanner: false, 
    );
  }
}
