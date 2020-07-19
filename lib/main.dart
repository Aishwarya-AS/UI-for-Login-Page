import 'package:dottheme/Screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Your work was great but just observe how i have written this code.
// Readability and Maintainability of the code should be the top most priority
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
