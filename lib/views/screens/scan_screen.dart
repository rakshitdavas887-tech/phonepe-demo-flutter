import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {

  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Scan & Pay"),
      ),

      body: const Center(

        child: Icon(

          Icons.qr_code_scanner,

          size: 120,

          color: Color(0xff5f259f),
        ),
      ),
    );
  }
}