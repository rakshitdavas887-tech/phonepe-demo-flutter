import 'package:flutter/material.dart';

class WalletSection extends StatelessWidget {

  const WalletSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(

      children: [

        Expanded(
          child:
          card("PhonePe Wallet"),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: card("Rewards"),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: card("Refer"),
        ),

      ],

    );

  }

  Widget card(String title) {

    return Container(

      padding:
      const EdgeInsets.all(12),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(12),

      ),

      child: Column(

        children: [

          const Icon(
            Icons.account_balance_wallet,
            color:
            Color(0xff5F259F),
          ),

          const SizedBox(height: 6),

          Text(

            title,

            textAlign:
            TextAlign.center,

            style: const TextStyle(
                fontSize: 11),

          ),

        ],

      ),

    );

  }

}