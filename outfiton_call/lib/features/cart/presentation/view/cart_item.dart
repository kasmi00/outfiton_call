import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String name;
  final String size;
  final String price;

  CartItem({required this.name, required this.size, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset('assets/images/lehenga.jpg'),
        title: Text(name),
        subtitle: Text("Size: $size"),
        trailing: Text(price),
      ),
    );
  }
}

class PriceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Product Price"),
                Text("Rs.6900"),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Discounts"),
                Text("Rs.0"),
              ],
            ),
            SizedBox(height: 8.0),
            Divider(),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order Total"),
                Text("Rs.6990"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
