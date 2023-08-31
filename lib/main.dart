// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/HomePgae.dart';
import 'package:shoppingapp/pages/ItemPage.dart';
import 'package:shoppingapp/pages/cart_page.dart';

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
       
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/":(context) => HomePage(),
        "Cartpage":(context) => CartPage(),
        "Itempage":(context) => ItemPage(image: '',)
      },
    );
  }
}

