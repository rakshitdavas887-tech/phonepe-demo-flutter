import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {

  final List transactions;

  const TransactionList({

    super.key,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      children: transactions.map((tx){

        return Container(

          margin: const EdgeInsets.only(bottom: 12),

          padding: const EdgeInsets.all(14),

          decoration: BoxDecoration(

            color: Colors.white,

            borderRadius: BorderRadius.circular(12),

            boxShadow: const [

              BoxShadow(

                color: Colors.black12,

                blurRadius: 6,
              )
            ],
          ),

          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Row(

                children: [

                  const Icon(

                    Icons.account_balance_wallet,

                    color: Color(0xff5f259f),
                  ),

                  const SizedBox(width: 12),

                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(tx.title),

                      Text(

                        tx.date,

                        style: const TextStyle(

                          fontSize: 12,

                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Text(

                "₹ ${tx.amount}",

                style: const TextStyle(

                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );

      }).toList(),
    );
  }
}