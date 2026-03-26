import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class TransactionList extends StatelessWidget {

  final List<TransactionModel> transactions;

  const TransactionList({
    super.key,
    required this.transactions,
  });

  Widget item(TransactionModel tx) {

    return ListTile(

      leading: CircleAvatar(
        backgroundColor: Colors.purple.shade50,
        child: const Icon(
          Icons.payment,
          color: Color(0xFF5F259F),
        ),
      ),

      title: Text(tx.title),

      subtitle: Text(tx.date),

      trailing: Text(
        tx.amount,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(

        children: [

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Recent Transactions",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ...transactions.map(item).toList(),

        ],
      ),
    );
  }
}