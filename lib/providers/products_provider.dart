import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_crash_course/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_provider.g.dart';

/// dummy product list
const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Groovy',
    price: 12,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '2',
    title: 'Karatid',
    price: 12,
    image: 'assets/products/karati.png',
  ),
  Product(
    id: '3',
    title: 'Demin Jeans',
    price: 124,
    image: 'assets/products/jeans.png',
  ),
  Product(
    id: '4',
    title: 'Red Bagpack',
    price: 234,
    image: 'assets/products/backpack.png',
  ),
];

/// Provider manual

// final productsProvider = Provider((ref) {
//   return allProducts;
// });

///
// final reducedProductsProvider = Provider((ref) {
//   return allProducts.where((p) => p.price < 50).toList();
// });

/// Generated the Provider
/// comand: dart run build_runner watch
@riverpod
List<Product> products(Ref ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(Ref ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
