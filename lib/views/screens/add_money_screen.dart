import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/wallet_viewmodel.dart';

class AddMoneyScreen extends StatefulWidget {
  const AddMoneyScreen({super.key});

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WalletViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Add Money")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Amount",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                vm.addMoney(double.parse(controller.text));

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