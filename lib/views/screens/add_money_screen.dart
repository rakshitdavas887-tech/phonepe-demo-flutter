import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/home_viewmodel.dart';
import '../../models/transaction_model.dart';

class AddMoneyScreen extends StatefulWidget {

  const AddMoneyScreen({super.key});

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {

  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final vm = context.read<HomeViewModel>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Add Money"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(

              controller: amountController,

              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: "Enter amount",
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(

              onPressed: () {

                double amount =
                double.parse(amountController.text);

                vm.balance += amount;

                vm.transactions.insert(

                  0,

                  TransactionModel(

                    title: "Added Money",

                    amount: amount,

                    date: "Now",
                  ),
                );

                vm.notifyListeners();

                Navigator.pop(context);
              },

              child: const Text("Add Money"),
            ),
          ],
        ),
      ),
    );
  }
}