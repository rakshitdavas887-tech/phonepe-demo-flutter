import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/home_viewmodel.dart';
import '../../widgets/transaction_list.dart';

class HistoryScreen extends StatelessWidget {

  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final vm = context.watch<HomeViewModel>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Transaction History"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(16),

        child: TransactionList(

          transactions: vm.transactions,
        ),
      ),
    );
  }
}