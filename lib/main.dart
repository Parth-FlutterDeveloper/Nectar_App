import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Splash_Screen.dart';

void main() {
  runApp(const MyFoodApp());
}

class MyFoodApp extends StatelessWidget {
  const MyFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
