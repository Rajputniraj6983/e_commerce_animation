
import 'package:e_commerce_animation/view/screen/Cart_page.dart';
import 'package:e_commerce_animation/view/screen/Detail_page.dart';
import 'package:e_commerce_animation/view/screen/Home_page.dart';
import 'package:flutter/material.dart';

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
      routes: {
        '/' :(context) => HomePage(),
        '/detailpage' :(context) => DetailPage(),
        '/cartpage' :(context) => CartPage(),
      },
    );
  }
}

