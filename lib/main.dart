import 'package:flutter/material.dart';
import 'package:Logitech_Store/Screens/home.dart';
import 'package:Logitech_Store/Screens/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logitech Store',
      routes: {
        Home.id: (context) => Home(),
        ProductDetail.id: (context) => ProductDetail(),
      },
      initialRoute: Home.id,
    );
  }
}
