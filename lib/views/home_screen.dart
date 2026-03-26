import 'package:flutter/material.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/balance_card.dart';
import '../widgets/quick_actions.dart';
import '../widgets/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final viewModel = HomeViewModel();

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: const Color(0xFF5F259F),
        title: const Text("PhonePe"),
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

            const BalanceCard(),

            const SizedBox(height: 20),

            const QuickActions(),

            const SizedBox(height: 20),

            TransactionList(
              transactions: viewModel.transactions,
            ),

          ],
        ),
      ),
    );
  }
}