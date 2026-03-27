import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class HomeViewModel extends ChangeNotifier {

  double balance = 25000;

  List<TransactionModel> transactions = [

    TransactionModel(
      title: "Mobile Recharge",
      amount: -199.0,
      date: "Today",
    ),

    TransactionModel(
      title: "Received from Rahul",
      amount: 500.0,
      date: "Today",
    ),

    TransactionModel(
      title: "Electric Bill",
      amount: -1200.0,
      date: "Yesterday",
    ),
  ];

  void addMoney(double amount) {
    balance += amount;
    transactions.insert(
      0,
      TransactionModel(
        title: "Added to Wallet",
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