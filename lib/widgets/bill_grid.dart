import 'package:flutter/material.dart';

class BillGrid extends StatelessWidget {
  const BillGrid({super.key});

  @override
  Widget build(BuildContext context) {

    final items = [
      {"icon": Icons.phone_android, "label": "Recharge"},
      {"icon": Icons.lightbulb, "label": "Electric"},
      {"icon": Icons.tv, "label": "DTH"},
      {"icon": Icons.local_gas_station, "label": "Gas"},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (_, i) {

        final item = items[i];

        return Column(
          children: [

            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(item["icon"] as IconData,
                  color: const Color(0xff5F259F)),
            ),

            const SizedBox(height: 6),

            Text(item["label"] as String),
          ],
        );
      },
    );
  }
}