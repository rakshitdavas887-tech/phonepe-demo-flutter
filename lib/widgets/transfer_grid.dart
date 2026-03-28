import 'package:flutter/material.dart';

import '../views/screens/send_screen.dart';
import '../views/screens/scan_screen.dart';
import '../views/screens/history_screen.dart';

class TransferGrid extends StatelessWidget {

  const TransferGrid({super.key});

  @override
  Widget build(BuildContext context) {

    return GridView.count(

      shrinkWrap: true,

      physics:
      const NeverScrollableScrollPhysics(),

      crossAxisCount: 4,

      children: [

        item(

          context,
          Icons.phone_android,
          "To Mobile",
              () {},

        ),

        item(

          context,
          Icons.account_balance,
          "To Bank",
              () {

            Navigator.push(

              context,

              MaterialPageRoute(
                builder: (_) =>
                const SendScreen(),
              ),

            );

          },

        ),

        item(

          context,
          Icons.qr_code,
          "Scan",

              () {

            Navigator.push(

              context,

              MaterialPageRoute(
                builder: (_) =>
                const ScanScreen(),
              ),

            );

          },

        ),

        item(

          context,
          Icons.history,
          "History",

              () {

            Navigator.push(

              context,

              MaterialPageRoute(
                builder: (_) =>
                const HistoryScreen(),
              ),

            );

          },

        ),

      ],

    );

  }

  Widget item(
      BuildContext context,
      IconData icon,
      String label,
      VoidCallback onTap,
      ) {

    return GestureDetector(

      onTap: onTap,

      child: Column(

        children: [

          CircleAvatar(

            radius: 24,

            backgroundColor:
            Colors.white,

            child: Icon(

              icon,

              color:
              const Color(0xff5F259F),

            ),

          ),

          const SizedBox(height: 6),

          Text(

            label,

            style: const TextStyle(
                fontSize: 11),

          ),

        ],

      ),

    );

  }

}
