import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/wallet_viewmodel.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WalletViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Transaction History")),
      body: ListView.builder(
        itemCount: vm.transactions.length,
        itemBuilder: (context, index) {
          final tx = vm.transactions[index];

          return ListTile(
            leading: const Icon(Icons.payment),
            title: Text(tx.title),
            subtitle: Text(tx.date),
            trailing: Text(
              "₹ ${tx.amount.toStringAsFixed(0)}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}