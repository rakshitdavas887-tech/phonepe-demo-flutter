import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../viewmodels/home_viewmodel.dart';
import '../../widgets/balance_card.dart';
import '../../widgets/banner_slider.dart';
import '../../widgets/quick_actions_grid.dart';
import '../../widgets/upi_card.dart';
import '../../widgets/bank_card.dart';
import '../../widgets/favourite_contact_list.dart';
import '../../widgets/offers_section.dart';
import '../../widgets/transaction_list.dart';
import '../../widgets/floating_scan_button.dart';

import 'scan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5F259F),
        title: const Text("PhonePe", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BalanceCard(balance: vm.balance)
                      .animate()
                      .fadeIn(duration: 600.ms)
                      .slideY(begin: 0.2, end: 0),
                  const SizedBox(height: 20),
                  const BannerSlider().animate().fadeIn(delay: 200.ms),
                  const SizedBox(height: 20),
                  const QuickActionsGrid().animate().fadeIn(delay: 300.ms),
                  const SizedBox(height: 20),
                  const UPICard().animate().fadeIn(delay: 400.ms),
                  const SizedBox(height: 20),
                  const Text(
                    "Manage Your Bank Accounts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        BankCard(
                          bankName: "HDFC BANK",
                          cardNumber: "**** **** 1234",
                          gradientColors: [Color(0xff1e3c72), Color(0xff2a5298)],
                        ),
                        BankCard(
                          bankName: "ICICI BANK",
                          cardNumber: "**** **** 5678",
                          gradientColors: [Color(0xfff83600), Color(0xfff9d423)],
                        ),
                      ],
                    ),
                  ).animate().fadeIn(delay: 500.ms),
                  const SizedBox(height: 20),
                  const Text(
                    "Favourite Contacts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  const FavouriteContactList().animate().fadeIn(delay: 600.ms),
                  const SizedBox(height: 20),
                  const Text(
                    "Offers & Rewards",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  const OffersSection().animate().fadeIn(delay: 700.ms),
                  const SizedBox(height: 20),
                  const Text(
                    "Recent Transactions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  TransactionList(transactions: vm.transactions),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingScanButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ScanScreen()),
          );
        },
      ).animate().scale(delay: 800.ms),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home, color: Color(0xff5F259F)), onPressed: () {}),
            IconButton(icon: const Icon(Icons.history), onPressed: () {}),
            const SizedBox(width: 48),
            IconButton(icon: const Icon(Icons.card_giftcard), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
