import 'package:flutter/material.dart';

class BillsGrid extends StatelessWidget {

  const BillsGrid({super.key});

  @override
  Widget build(BuildContext context) {

    return GridView.count(

      shrinkWrap: true,

      physics:
      const NeverScrollableScrollPhysics(),

      crossAxisCount: 4,

      children: const [

        item(Icons.phone_android,
            "Mobile"),

        item(Icons.qr_code,
            "Scan QR"),

        item(Icons.lightbulb,
            "Electric"),

        item(Icons.tv,
            "DTH"),

      ],

    );

  }

}

class item extends StatelessWidget {

  final IconData icon;
  final String label;

  const item(this.icon, this.label,
      {super.key});

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        CircleAvatar(

          backgroundColor:
          Colors.white,

          child: Icon(

            icon,

            color:
            Color(0xff5F259F),

          ),

        ),

        const SizedBox(height: 6),

        Text(

          label,

          style:
          TextStyle(fontSize: 11),

        ),

      ],

    );

  }

}