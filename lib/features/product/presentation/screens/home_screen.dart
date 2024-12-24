import 'package:flutter/material.dart';
import 'package:store/features/product/domain/entities/product.dart';
import 'package:store/features/product/presentation/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products;

  const HomeScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Your AppBar or other widgets can go here
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 1.8 / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final product = products[index];
                return ProductCard(product: product);
              },
              childCount: products.length,
            ),
          ),
        ],
      ),
    );
  }
}
