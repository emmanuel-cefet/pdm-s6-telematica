import 'package:flutter/material.dart';
import 'product.dart';

class CartProvider with ChangeNotifier {
  // Mapa para guardar o produto e a sua quantidade correspondente
  final Map<String, int> _items = {};

  Map<String, int> get items => {..._items};

  int get totalItems => _items.values.fold(0, (sum, quantity) => sum + quantity);

  double totalPrice(List<Product> availableProducts) {
    double total = 0.0;
    _items.forEach((productId, quantity) {
      final product = availableProducts.firstWhere((p) => p.id == productId);
      total += product.price * quantity;
    });
    return total;
  }

  void addToCart(String productId) {
    if (_items.containsKey(productId)) {
      _items.update(productId, (existingQuantity) => existingQuantity + 1);
    } else {
      _items[productId] = 1;
    }
    notifyListeners(); // Avisa as telas para se reconstruírem
  }

  void removeFromCart(String productId) {
    if (!_items.containsKey(productId)) return;
    if (_items[productId] == 1) {
      _items.remove(productId);
    } else {
      _items.update(productId, (existingQuantity) => existingQuantity - 1);
    }
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}