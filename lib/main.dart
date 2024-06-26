import 'package:flutter/material.dart';
import 'package:test_tuqa_baker/layout/order_accepted_screen.dart';

import 'layout/category_screene.dart';
import 'layout/items_screen.dart';
import 'layout/logo_screen.dart';
import 'layout/my_cart_screen.dart';
import 'layout/welcome_sceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LogoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

