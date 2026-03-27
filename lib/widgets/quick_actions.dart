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

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [

        actionButton(Icons.qr_code, "Scan", onScanTap),

        actionButton(Icons.send, "Send", onSendTap),

        actionButton(Icons.account_balance, "Bank", onBankTap),

        actionButton(Icons.history, "History", onHistoryTap),
      ],
    );
  }

  Widget actionButton(

      IconData icon,
      String text,
      VoidCallback onTap,
      ) {

    return InkWell(

      onTap: onTap,

      borderRadius: BorderRadius.circular(40),

      child: Column(

        children: [

          Container(

            padding: const EdgeInsets.all(18),

            decoration: BoxDecoration(

              color: Colors.white,

              shape: BoxShape.circle,

              boxShadow: [

                BoxShadow(

                  color: Colors.black12,

                  blurRadius: 8,
                ),
              ],
            ),

            child: Icon(

              icon,

              color: const Color(0xff5f259f),

              size: 26,
            ),
          ),

          const SizedBox(height: 8),

          Text(text),
        ],
      ),
    );
  }
}