import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/home_viewmodel.dart';

import '../../widgets/action_button.dart';
import '../../widgets/banner_slider.dart';
import '../../widgets/wallet_card.dart';
import '../../widgets/bill_grid.dart';
import '../../widgets/transaction_list.dart';

import 'send_screen.dart';
import 'scan_screen.dart';
import 'history_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final vm = context.watch<HomeViewModel>();

    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xff5F259F),
        title: const Text("PhonePe"),
        actions: [

          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfileScreen(),
                ),
              );

            },
          ),
        ],
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            /// BALANCE CARD
            Center(
              child: Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: const Color(0xff5F259F),
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  children: [

                    const Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70),
                    ),

                    Text(
                      "₹ ${vm.balance}",
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// BANNER
            const BannerSlider(),

            const SizedBox(height: 20),

            /// TRANSFER SECTION
            const Text(
              "Transfer Money",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ActionButton(
                  icon: Icons.qr_code,
                  label: "Scan",
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ScanScreen(),
                      ),
                    );

                  },
                ),

                ActionButton(
                  icon: Icons.send,
                  label: "Send",
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SendScreen(),
                      ),
                    );

                  },
                ),

                ActionButton(
                  icon: Icons.account_balance,
                  label: "Bank",
                  onTap: () {},
                ),

                ActionButton(
                  icon: Icons.history,
                  label: "History",
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HistoryScreen(),
                      ),
                    );

                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// WALLET SECTION
            const Text(
              "Wallet",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Row(
              children: const [

                Expanded(
                  child: WalletCard(
                    title: "PhonePe Wallet",
                    subtitle: "₹ 200",
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: WalletCard(
                    title: "Rewards",
                    subtitle: "3 Coupons",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// BILLS
            const Text(
              "Recharge & Bills",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            const BillGrid(),

            const SizedBox(height: 20),

            /// TRANSACTIONS
            const Text(
              "Recent Transactions",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            TransactionList(
              transactions: vm.transactions,
            ),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

      ),

    );
  }
}