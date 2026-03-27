import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {

    final banners = [

      "https://picsum.photos/400/150",
      "https://picsum.photos/401/150",
      "https://picsum.photos/402/150",

    ];

    return SizedBox(

      height: 150,

      child: PageView.builder(

        itemCount: banners.length,

        controller: PageController(viewportFraction: 0.9),

        itemBuilder: (context, index) {

          return Padding(

            padding: const EdgeInsets.symmetric(horizontal: 6),

            child: ClipRRect(

              borderRadius: BorderRadius.circular(16),

              child: Image.network(
                banners[index],
                fit: BoxFit.cover,
              ),

            ),

          );

        },

      ),

    );

  }
}