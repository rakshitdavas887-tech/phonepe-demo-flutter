import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/wallet_viewmodel.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {

  final nameController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<WalletViewModel>(context);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Send Money"),
        backgroundColor: const Color(0xFF5F259F),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Receiver Name",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Amount",
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(

              onPressed: () {
                final amount = double.tryParse(amountController.text) ?? 0;
                vm.sendMoney(
                  nameController.text,
                  amount,
                );

                Navigator.pop(context);
              },

              child: const Text("Send"),

            ),
          ],
        ),
      ),
    );
  }
}