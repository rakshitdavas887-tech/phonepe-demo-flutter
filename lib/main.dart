import 'package:flutter/material.dart';
import 'views/home_screen.dart';

void main() {

  runApp(const PhonePeDemo());

}

class PhonePeDemo extends StatelessWidget {

  const PhonePeDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'PhonePe Demo',

      theme: ThemeData(

        primaryColor: const Color(0xFF5F259F),

      ),

      home: const HomeScreen(),

    );
  }
}