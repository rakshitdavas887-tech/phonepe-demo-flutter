import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BalanceCard extends StatelessWidget {
  final double balance;

  const BalanceCard({
    super.key,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xff5f259f),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff5f259f).withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 8),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white.withOpacity(0.5),
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "₹ $balance",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.1, end: 0),
            ],
          ),
        ),
      ),
    ).animate(onPlay: (controller) => controller.repeat(reverse: true))
     .shimmer(delay: 3.seconds, duration: 2.seconds, color: Colors.white10)
     .animate(target: 1) // Reset for hover effect simulation or just use scale
     .scale(
       begin: const Offset(1, 1),
       end: const Offset(1.02, 1.02),
       duration: 2.seconds,
       curve: Curves.easeInOut,
     );
  }
}
