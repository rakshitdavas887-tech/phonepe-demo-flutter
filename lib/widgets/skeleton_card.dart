import 'package:flutter/material.dart';
import 'shimmer_loader.dart';

class SkeletonCard extends StatelessWidget {
  const SkeletonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerLoader(
      width: double.infinity,
      height: 100,
      borderRadius: BorderRadius.all(Radius.circular(16)),
    );
  }
}
