import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session1/providers/cart_provider.dart';
import 'package:session1/screens/cart_screen.dart';
import 'package:session1/product_item.dart';
import '../../models/product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Product> products = [
    Product(id: 'p1', title: 'Headphones', price: 59.99),
    Product(id: 'p2', title: 'Smartphone', price: 499.99),
    Product(id: 'p3', title: 'Laptop', price: 899.99),
    Product(id: 'p4', title: 'Smart Watch', price: 199.99),
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
        centerTitle: true,
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(products: products),
                    ),
                  );
                },
              ),
              if (cart.itemCount > 0)
                Positioned(
                  right: 6,
                  top: 6,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      cart.itemCount.toString(),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (_, i) => ProductItem(product: products[i]),
      ),
    );
  }
}
