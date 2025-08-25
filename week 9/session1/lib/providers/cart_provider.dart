import 'package:flutter/material.dart';
import '../../models/product.dart';

class CartProvider with ChangeNotifier {
  final Map<String, int> _items = {};

  Map<String, int> get items => _items;

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id] = _items[product.id]! + 1;
    } else {
      _items[product.id] = 1;
    }
    notifyListeners();
  }

  void removeItem(Product product) {
    if (!_items.containsKey(product.id)) return;
    if (_items[product.id]! > 1) {
      _items[product.id] = _items[product.id]! - 1;
    } else {
      _items.remove(product.id);
    }
    notifyListeners();
  }

  void removeAll(Product product) {
    _items.remove(product.id);
    notifyListeners();
  }

  int getQuantity(Product product) {
    return _items[product.id] ?? 0;
  }

  int get itemCount {
    return _items.values.fold(0, (sum, qty) => sum + qty);
  }

  double totalPrice(List<Product> products) {
    double total = 0.0;
    _items.forEach((productId, qty) {
      final product = products.firstWhere((p) => p.id == productId);
      total += product.price * qty;
    });
    return total;
  }
}
