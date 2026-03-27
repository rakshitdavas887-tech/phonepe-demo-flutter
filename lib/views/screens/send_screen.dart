import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/home_viewmodel.dart';

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

    final vm = context.read<HomeViewModel>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Send Money"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Receiver name",
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

                vm.sendMoney(

                  nameController.text,

                  double.parse(amountController.text),
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