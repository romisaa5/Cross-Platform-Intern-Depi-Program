import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session1/widgets/cart_item_widget.dart';
import 'package:session1/providers/cart_provider.dart';
import '../../models/product.dart';


class CartScreen extends StatelessWidget {
  final List<Product> products;
  const CartScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Your Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: cart.items.entries.map((entry) {
                final product =
                    products.firstWhere((p) => p.id == entry.key);
                return CartItemWidget(
                  product: product,
                  quantity: entry.value,
                  cart: cart,
                );
              }).toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total: \$${cart.totalPrice(products).toStringAsFixed(2)}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Checkout successful!")),
                    );
                  },
                  child: const Text("Checkout"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
