import 'package:flutter/material.dart';
import 'package:store/app/theme/app_theme.dart';
import 'package:store/features/product/presentation/screens/product_loader.dart';
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ProductLoader(),
    );
  }
}
