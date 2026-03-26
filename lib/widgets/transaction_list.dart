import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/home_viewmodel.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<HomeViewModel>(context);

    return Card(

      margin: const EdgeInsets.all(16),

      child: Column(

        children: [

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Recent Transactions",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          ...vm.transactions.map((tx) {

            return ListTile(

              leading: const CircleAvatar(
                backgroundColor: Color(0xFFEDE7F6),
                child: Icon(Icons.payment, color: Color(0xFF5F259F)),
              ),

              title: Text(tx.title),

              subtitle: Text(tx.date),

              trailing: Text(

                "₹ ${tx.amount.toStringAsFixed(0)}",

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );

          }),
        ],
      ),
    );
  }
}