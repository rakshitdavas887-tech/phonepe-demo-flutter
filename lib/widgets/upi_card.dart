import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UPICard extends StatelessWidget {
  const UPICard({super.key});

  @override
  Widget build(BuildContext context) {
    const upiId = "rakshit@upi";
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff5F259F).withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.qr_code_2, color: Color(0xff5F259F), size: 20),
              const SizedBox(width: 12),
              Text(
                "My UPI ID: $upiId",
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              Clipboard.setData(const ClipboardData(text: upiId));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("UPI ID Copied")),
              );
            },
            icon: const Icon(Icons.copy, size: 18, color: Color(0xff5F259F)),
          ),
        ],
      ),
    );
  }
}
