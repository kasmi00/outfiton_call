import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_image.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
         
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 80),
              
                Column(
                  children: [
                    // Logo Image
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Image.asset(
                        'assets/images/logo.png', 
                        height: 100,
                      ),
                    ),
                    const SizedBox(height: 16),
                   
                    const Text(
                      '30.11.2024',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Tagline
                      const Text(
                        'Re-Wearing Is Caring',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'There is only one rule in fashion.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Highlighted Text
                      const Text(
                        'RECYCLE Your Clothes',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 50),
                      // Get Started Button
                      SizedBox(
                        width: 280,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            // Navigate to Login Screen
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
