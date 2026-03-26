import 'package:flutter/material.dart';

void main() {
  runApp(const PhonePeDemo());
}

class PhonePeDemo extends StatelessWidget {
  const PhonePeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PhonePe Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF5F259F),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F2F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5F259F),
        title: const Text("PhonePe"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle),
          )
        ],
      ),

      body: Column(
        children: [

          // balance card
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF5F259F),
              borderRadius: BorderRadius.circular(16),
            ),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "₹ 25,000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // quick actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              actionButton(Icons.qr_code_scanner, "Scan"),

              actionButton(Icons.send, "Send"),

              actionButton(Icons.account_balance, "Bank"),

              actionButton(Icons.history, "History"),

            ],
          ),
        ],
      ),
    );
  }

  static Widget actionButton(icon, text) {

    return Column(
      children: [

        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),

          child: Icon(
            icon,
            color: const Color(0xFF5F259F),
          ),
        ),

        const SizedBox(height: 6),

        Text(text)
      ],
    );
  }
}