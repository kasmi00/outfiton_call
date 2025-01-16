import 'package:flutter/material.dart';

class Rent extends StatefulWidget {
  const Rent({super.key});

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  int _currentIndex = 0;
  bool _isHomeSelected = true;
  bool _isFavoritesSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("this is Rent page")),
      bottomNavigationBar: SizedBox(
        height: 140,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 14.0),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  print(_currentIndex);
                  switch (index) {
                    case 0:
                      _isHomeSelected = true;
                      Navigator.pushReplacementNamed(context, '/dashboard'); // Home
                      break;
                    case 1:
                      _isFavoritesSelected = true;
                      Navigator.pushReplacementNamed(context, '/favorites'); // Favorites
                      break;
                    case 2:
                      Navigator.pushReplacementNamed(context, '/rent'); // Rent
                      break;
                    case 3:
                      Navigator.pushReplacementNamed(context, '/profile'); // Profile
                      break;
                  }
                });
              },
              selectedItemColor: Colors.pink,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,color: Colors.grey),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.checkroom),
                  label: 'Rent',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
