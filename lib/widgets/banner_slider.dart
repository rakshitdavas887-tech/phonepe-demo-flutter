import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {

    final images = [

      "https://picsum.photos/800/300?1",
      "https://picsum.photos/800/300?2",
      "https://picsum.photos/800/300?3",

    ];

    return CarouselSlider(

      options: CarouselOptions(

        height: 160,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,

      ),

      items: images.map((url) {

        return Container(

          margin: const EdgeInsets.symmetric(horizontal: 6),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                blurRadius: 8,
                color: Colors.black12,
              )
            ],
          ),

          child: ClipRRect(

            borderRadius: BorderRadius.circular(16),

            child: Image.network(

              url,

              fit: BoxFit.cover,

              width: double.infinity,

              loadingBuilder: (context, child, loadingProgress) {

                if (loadingProgress == null) {
                  return child;
                }

                return Container(

                  color: Colors.grey.shade200,

                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),

                );

              },

              errorBuilder: (_, __, ___) {

                return Container(

                  color: Colors.deepPurple.shade100,

                  child: const Center(
                    child: Icon(
                      Icons.local_offer,
                      size: 40,
                      color: Color(0xff5f259f),
                    ),
                  ),

                );

              },

            ),

          ),

        );

      }).toList(),

    );

  }

}