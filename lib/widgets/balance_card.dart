import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {

  final double balance;

  const BalanceCard({

    super.key,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        color: const Color(0xff5f259f),

        borderRadius: BorderRadius.circular(18),

        boxShadow: [

          BoxShadow(

            color: Colors.black12,

            blurRadius: 10,

            offset: const Offset(0,6),
          )
        ],
      ),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text(

            "Total Balance",

            style: TextStyle(

              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 6),

          Text(

            "₹ $balance",

            style: const TextStyle(

              color: Colors.white,

              fontSize: 24,

              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}