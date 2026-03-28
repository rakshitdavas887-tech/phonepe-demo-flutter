import 'package:flutter/material.dart';

class FloatingScanButton extends StatelessWidget {
  final VoidCallback onTap;

  const FloatingScanButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: const Color(0xff5F259F),
      child: const Icon(Icons.qr_code_scanner, color: Colors.white),
    );
  }
}
