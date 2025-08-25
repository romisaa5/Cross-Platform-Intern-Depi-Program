import 'package:flutter/material.dart';
import 'package:session1/providers/cart_provider.dart';
import '../../models/product.dart';


class CartItemWidget extends StatelessWidget {
  final Product product;
  final int quantity;
  final CartProvider cart;

  const CartItemWidget({
    super.key,
    required this.product,
    required this.quantity,
    required this.cart,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(product.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        color: Colors.red,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) => cart.removeAll(product),
      child: ListTile(
       
        title: Text(product.title),
        subtitle: Text('x$quantity = \$${(product.price * quantity).toStringAsFixed(2)}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => cart.removeItem(product),
            ),
            Text('$quantity'),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => cart.addItem(product),
            ),
          ],
        ),
      ),
    );
  }
}
