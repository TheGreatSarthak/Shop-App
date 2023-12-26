import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
      ).copyWith(
        colorScheme: ThemeData(primarySwatch: Colors.green)
            .colorScheme
            .copyWith(secondary: Colors.yellow.shade600),
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName :(ctx) => const ProductDetailScreen(),
      },
    );
  }
}
