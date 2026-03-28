import 'package:flutter/material.dart';
import 'shimmer_loader.dart';

class SkeletonTransaction extends StatelessWidget {
  const SkeletonTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const ShimmerLoader(width: 50, height: 50, shape: BoxShape.circle),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerLoader(width: 150, height: 16),
                SizedBox(height: 8),
                ShimmerLoader(width: 100, height: 12),
              ],
            ),
          ),
          const ShimmerLoader(width: 60, height: 16),
        ],
      ),
    );
  }
}
