import 'package:flutter/material.dart';
import 'package:outfitoncall/view/dashboard_view.dart';  // Import the DashboardScreen

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // After registration logic, navigate to Dashboard
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardScreen()), // Navigate to DashboardScreen
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
