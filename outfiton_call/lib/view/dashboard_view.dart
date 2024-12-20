import 'package:flutter/material.dart';

void main() => runApp(const OutfitOnCall());

class OutfitOnCall extends StatelessWidget {
  const OutfitOnCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outfit On Call',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController _searchController = TextEditingController();
  int selectedCategory = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.grey[300],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Product List',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Search Bar
                TextField(
                  controller: _searchController,
                  onChanged: (query) {
                    setState(() {
                      // Implement your search logic here if needed
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Search your product',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                const SizedBox(height: 20),

                // Category Selector
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryIcon(Icons.checkroom, 'Apparel', 0),
                      _buildCategoryIcon(Icons.shopping_bag, 'Shoe', 1),
                      _buildCategoryIcon(Icons.brush, 'Beauty', 2),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Product List (Mock Data)
                _buildProductCard(
                  imageUrl: 'assets/images/lehenga.png',
                  title: 'Lehenga',
                  description: 'This comes with jewellery & very comfortable.',
                  price: 'Rs. 4000',
                  rentDays: [3, 7, 15],
                ),
                const SizedBox(height: 16),
                _buildProductCard(
                  imageUrl: 'assets/images/vneck_top.png',
                  title: 'V neck top',
                  description: 'This is 100% cotton shirt & very comfortable.',
                  price: 'Rs. 1200',
                  colors: [Colors.red, Colors.blue, Colors.yellow, Colors.pink],
                ),
                const SizedBox(height: 10),
                _buildProductCard(
                  imageUrl: 'assets/images/zara_denim.png',
                  title: 'Zara Denim',
                  description: 'Size - 28, Length - 150cm',
                  price: 'Rs. 2000',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: const Icon(Icons.shopping_cart, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            // You can add navigation logic here based on selected index
          },
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
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
    );
  }

  Widget _buildCategoryIcon(IconData icon, String label, int index) {
    bool isSelected = selectedCategory == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                colors: [Colors.pink.shade200, Colors.pink],
              )
                  : null,
              color: isSelected ? null : Colors.grey[200],
              shape: BoxShape.circle,
              boxShadow: isSelected
                  ? [
                BoxShadow(
                  color: Colors.pink.shade100,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ]
                  : null,
            ),
            child: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.pink : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard({
    required String imageUrl,
    required String title,
    required String description,
    required String price,
    List<int>? rentDays,
    List<Color>? colors,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      shadowColor: Colors.grey[150],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (rentDays != null)
              Row(
                children: rentDays
                    .map((day) => Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                      vertical: 6, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.pink[55],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '$day days',
                    style: const TextStyle(color: Colors.pink),
                  ),
                ))
                    .toList(),
              )
            else if (colors != null)
              Row(
                children: colors
                    .map((color) => Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ))
                    .toList(),
              ),
            const SizedBox(height: 16),
            Text(
              price,
              style: const TextStyle(

                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}