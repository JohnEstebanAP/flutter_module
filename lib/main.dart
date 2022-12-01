import 'package:flutter/material.dart';
import 'package:product_detail/product_detail.dart';
import 'package:my_discount/my_discount.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDiscount(),
    );
  }
}

@pragma("vm:entry-point")
void MainProductDetail() async {
  runApp(const StartProductDetail());
}

class StartProductDetail extends StatelessWidget {
  const StartProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/product_detail",
      routes: {
        "/product_detail": (_) => ProductDetail(),
        "/my_discount": (_) => const MyDiscount(),
      },
    );
  }
}

@pragma("vm:entry-point")
void MainMyDiscount() async {
  runApp(const StartMyDiscount());
}

class StartMyDiscount extends StatelessWidget {
  const StartMyDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/my_discount",
      routes: {
        "/my_discount": (_) => const MyDiscount(),
        "/product_detail": (_) => ProductDetail(),
      },
    );
  }
}
