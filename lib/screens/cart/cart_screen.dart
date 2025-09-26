import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_crash_course/providers/cart_provider.dart';
// import 'package:flutter_riverpod_crash_course/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    // Watch the provider for cart products
    // final cartProducts = ref.watch(reducedProductsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // Wrap with a check if data is loaded or empty (optional)
            // For now, directly map the products
            ...cartProducts.map((product) {
              return Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(product.image, width: 60, height: 60),
                    const SizedBox(width: 10),
                    Text(product.title),
                    Expanded(child: SizedBox()), // spacer to push total to end
                    Text('\$${product.price}'),
                  ],
                ),
              );
            }),
            // Add your totals display here if needed
            // e.g., total price, checkout button, etc.
          ],
        ),
      ),
    );
  }
}
