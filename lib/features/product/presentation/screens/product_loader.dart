import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/product/presentation/cubit/product_cubit.dart';
import 'package:store/features/product/presentation/cubit/product_state.dart';
import 'package:store/features/product/presentation/screens/home_screen.dart';
import 'package:store/features/product/presentation/cubit/category_cubit.dart';
class ProductLoader extends StatelessWidget {
  const ProductLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, String>(
      builder: (context, selectedCategory) {
        return BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            } else if (state is ProductError) {
              return Scaffold(
                body: Center(
                  child: Text('Failed to load products: ${state.message}'),
                ),
              );
            } else if (state is ProductLoaded) {
              // Pass the loaded products to HomeScreen
              return HomeScreen(products: state.products);
            } else {
              return const Scaffold(
                body: Center(child: Text('Unexpected state')),
              );
            }
          },
        );
      },
    );
  }
}
