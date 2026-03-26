import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/home_viewmodel.dart';
import '../../widgets/balance_card.dart';
import '../../widgets/quick_actions.dart';
import '../../widgets/transaction_list.dart';
import 'screens/send_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final viewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(

      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: const Color(0xFF5F259F),
        elevation: 0,
        title: const Text(
          "PhonePe",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.account_circle),
          )
        ],
      ),

      body: SingleChildScrollView(

        child: Column(

          children: [

            /// Balance Card
            const BalanceCard(),

            const SizedBox(height: 20),

            /// Quick Actions
            QuickActions(

              onScanTap: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Scan feature coming soon")),
                );

              },

              onSendTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SendScreen(),
                  ),
                );

              },

              onBankTap: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Bank feature coming soon")),
                );

              },

              onHistoryTap: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("History feature coming soon")),
                );

              },

            ),

            const SizedBox(height: 20),

            /// Transaction List (from ViewModel)
            const TransactionList(),

            const SizedBox(height: 20),

          ],
        ),

      ),

    );
  }
}