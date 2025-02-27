import 'package:flutter/material.dart';
import 'package:outfitoncall/features/cart/presentation/view/cart_item.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                CartItem(
                  name: "Women's Handbag",
                  size: "Free size",
                  price: "Rs.800",
                ),
                CartItem(
                  name: "Casual Sports Shoe",
                  size: "IND-6",
                  price: "Rs.800",
                ),
                CartItem(
                  name: "Crop Top",
                  size: "City:1",
                  price: "Rs.4000",
                ),
                CartItem(
                  name: "Classic sequence Lehenga",
                  size: "Rented for 3 days",
                  price: "Rs.4000",
                ),
              ],
            ),
          ),
          PriceDetails(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Continue action
                },
                child: Text('Continue'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
