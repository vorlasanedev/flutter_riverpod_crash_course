// providers/cart_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_crash_course/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
  @override
  Set<Product> build() {
    // Initial product
    return {
      Product(
        id: '3',
        title: 'Red Backpape', // typo fixed from 'Backpage'
        price: 14,
        image: 'assets/products/backpack.png',
      ),
    };
  }

  // Example: method to add product
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  // Example: method to remove product
  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(
  () => CartNotifier(),
);
