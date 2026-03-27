import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/home_viewmodel.dart';

import '../../widgets/balance_card.dart';
import '../../widgets/quick_actions.dart';
import '../../widgets/transaction_list.dart';

import 'send_screen.dart';
import 'add_money_screen.dart';
import 'history_screen.dart';
import 'scan_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final vm = context.watch<HomeViewModel>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("PhonePe"),
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(16),

          child: Column(

            children: [

              BalanceCard(
                balance: vm.balance,
              ),

              const SizedBox(height: 25),

              QuickActions(

                onScanTap: () {

                  Navigator.push(

                    context,

                    MaterialPageRoute(

                      builder: (_) => const ScanScreen(),
                    ),
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

              const SizedBox(height: 25),

              TransactionList(
                transactions: vm.transactions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}