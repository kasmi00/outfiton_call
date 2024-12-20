import 'package:flutter/material.dart';
import 'package:outfitoncall/view/dashboard_view.dart';
import 'package:outfitoncall/view/login_view.dart';
import 'package:outfitoncall/view/onboarding_view.dart';
import 'package:outfitoncall/view/registration_view.dart';

void main() {
  runApp(const outfitoncall());
}

class outfitoncall extends StatelessWidget {
  const outfitoncall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/onboarding',
      theme: ThemeData(
          primarySwatch: Colors.brown,
          scaffoldBackgroundColor: Colors.pink.shade100,
          fontFamily: 'Montserrat  Italic'),
      routes: {
        '/login': (context) => const LoginScreen(), // Login screen route
        '/dashboard': (context) => const DashboardScreen(), // Dashboard route
        '/register': (context) =>
            const RegistrationView(), // Registration route
        '/onboarding': (context) =>
            const OnboardingScreen(), // Onboarding screen route
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
