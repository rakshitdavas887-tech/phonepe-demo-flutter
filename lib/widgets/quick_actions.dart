import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {

  final VoidCallback onScanTap;
  final VoidCallback onSendTap;
  final VoidCallback onBankTap;
  final VoidCallback onHistoryTap;

  const QuickActions({
    super.key,
    required this.onScanTap,
    required this.onSendTap,
    required this.onBankTap,
    required this.onHistoryTap,
  });

  Widget buildAction(
      IconData icon,
      String label,
      VoidCallback onTap,
      ) {

    return GestureDetector(

      onTap: onTap,

      child: Column(

        children: [

          Container(

            padding: const EdgeInsets.all(16),

            decoration: const BoxDecoration(

              color: Colors.white,
              shape: BoxShape.circle,

            ),

            child: Icon(
              icon,
              color: Color(0xFF5F259F),
            ),

          ),

          const SizedBox(height: 8),

          Text(label),

        ],

      ),

    );
  }

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          buildAction(Icons.qr_code, "Scan", onScanTap),

          buildAction(Icons.send, "Send", onSendTap),

          buildAction(Icons.account_balance, "Bank", onBankTap),

          buildAction(Icons.history, "History", onHistoryTap),

        ],

      ),

    );
  }
}