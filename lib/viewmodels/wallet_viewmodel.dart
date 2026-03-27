import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class WalletViewModel extends ChangeNotifier {

  double balance = 25000;

  final List<TransactionModel> transactions = [

    TransactionModel(
      title: "Mobile Recharge",
      amount: -199,
      date: "Today",
    ),

    TransactionModel(
      title: "Received from Rahul",
      amount: 500,
      date: "Today",
    ),

    TransactionModel(
      title: "Electric Bill",
      amount: -1200,
      date: "Yesterday",
    ),
  ];

  void addMoney(double amount) {

    balance += amount;

    transactions.insert(

      0,

      TransactionModel(

        title: "Added Money",

        amount: amount,

        date: "Now",
      ),
    );

    notifyListeners();
  }

  void sendMoney(String name, double amount) {

    balance -= amount;

    transactions.insert(

      0,

      TransactionModel(
        title: "Sent to $name",
        amount: -amount,
        date: "Now",
      ),
    );

    notifyListeners();
  }
}