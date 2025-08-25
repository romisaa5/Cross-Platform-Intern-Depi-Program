import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session1/providers/cart_provider.dart';
import '../models/product.dart';


class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final qty = cart.getQuantity(product);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(product.title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('\$${product.price.toStringAsFixed(2)}'),
                const SizedBox(height: 8),
                qty == 0
                    ? ElevatedButton(
                        onPressed: () => cart.addItem(product),
                        child: const Text("Add"),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => cart.removeItem(product),
                          ),
                          Text('$qty'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () => cart.addItem(product),
                          ),
                        ],
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
