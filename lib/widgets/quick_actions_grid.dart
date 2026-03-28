import 'package:flutter/material.dart';
import '../views/screens/scan_screen.dart';
import '../views/screens/send_screen.dart';
import '../views/screens/history_screen.dart';

class QuickActionsGrid extends StatelessWidget {
  const QuickActionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      children: [
        _actionItem(context, Icons.qr_code_scanner, "Scan QR", const ScanScreen()),
        _actionItem(context, Icons.send, "Send Money", const SendScreen()),
        _actionItem(context, Icons.account_balance, "Bank Transfer", const SendScreen()), // Placeholder
        _actionItem(context, Icons.account_balance_wallet, "Check Balance", null),
      ],
    );
  }

  Widget _actionItem(BuildContext context, IconData icon, String label, Widget? screen) {
    return InkWell(
      onTap: () {
        if (screen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => screen),
          );
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Balance"),
              content: const Text("Your current balance is ₹ 25,000"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OK"),
                ),
              ],
            ),
          );
        }
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff5F259F).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xff5F259F), size: 28),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
