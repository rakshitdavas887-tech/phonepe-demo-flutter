import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodels/wallet_viewmodel.dart';
import 'views/screens/home_screen.dart';
import 'views/screens/history_screen.dart';
import 'views/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WalletViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainNavigation(),
      ),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {

  int index = 0;

  final screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[index],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: index,

        onTap: (i) {
          setState(() {
            index = i;
          });
        },

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