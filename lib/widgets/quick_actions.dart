import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  Widget actionItem(IconData icon, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white,
          child: Icon(icon, color: const Color(0xFF5F259F)),
        ),
        const SizedBox(height: 6),
        Text(title),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        actionItem(Icons.qr_code, "Scan"),
        actionItem(Icons.send, "Send"),
        actionItem(Icons.account_balance, "Bank"),
        actionItem(Icons.history, "History"),
      ],
    );
  }
}
