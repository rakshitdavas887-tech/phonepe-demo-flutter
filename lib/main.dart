import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodels/home_viewmodel.dart';
import 'views/home_screen.dart';

void main() {

  runApp(

    ChangeNotifierProvider(

      create: (_) => HomeViewModel(),

      child: const PhonePeDemo(),

    ),

  );
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