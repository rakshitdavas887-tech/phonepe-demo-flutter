import '../models/transaction_model.dart';

class HomeViewModel {

  List<TransactionModel> transactions = [
    TransactionModel(
      title: "Mobile Recharge",
      amount: "- ₹199",
      date: "Today",
    ),
    TransactionModel(
      title: "Received from Rahul",
      amount: "+ ₹500",
      date: "Today",
    ),
    TransactionModel(
      title: "Electric Bill",
      amount: "- ₹1200",
      date: "Yesterday",
    ),
  ];

}