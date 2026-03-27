import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/wallet_viewmodel.dart';
import '../../widgets/balance_card.dart';
import '../../widgets/quick_actions.dart';
import '../../widgets/transaction_list.dart';
import 'send_screen.dart';
import 'add_money_screen.dart';
import 'history_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final walletVM = Provider.of<WalletViewModel>(context);

    return Scaffold(

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

            const SizedBox(height: 20),

            /// balance card
            BalanceCard(balance: walletVM.balance),

            const SizedBox(height: 20),

            /// quick actions
            QuickActions(

              onScanTap: () {},

              onSendTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SendScreen(),
                  ),
                );
              },

              onBankTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AddMoneyScreen(),
                  ),
                );
              },

              onHistoryTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HistoryScreen(),
                  ),
                );
              },

            ),

            const SizedBox(height: 20),

            /// transaction list
            const TransactionList(),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}