import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/profile_viewmodel.dart';
import '../../viewmodels/home_viewmodel.dart';
import '../../viewmodels/auth_viewmodel.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final profile = context.watch<ProfileViewModel>();
    final wallet = context.watch<HomeViewModel>();
    final auth = context.read<AuthViewModel>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            const CircleAvatar(

              radius: 45,

              backgroundColor: Color(0xff5f259f),

              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              profile.name,

              style: const TextStyle(

                fontSize: 20,

                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            infoTile("Email", profile.email),

            infoTile("Phone", profile.phone),

            infoTile("UPI ID", profile.upiId),

            infoTile(
              "Wallet Balance",
              "₹ ${wallet.balance}",
            ),

            const SizedBox(height: 30),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton(

                onPressed: () {

                  auth.logout();

                  Navigator.pushAndRemoveUntil(

                    context,

                    MaterialPageRoute(

                      builder: (_) => const LoginScreen(),
                    ),

                        (route) => false,
                  );
                },

                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.red,
                ),

                child: const Text(
                  "Logout",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoTile(

      String title,
      String value,
      ) {

    return Container(

      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius: BorderRadius.circular(12),

        boxShadow: [

          BoxShadow(

            color: Colors.grey.shade300,

            blurRadius: 6,
          ),
        ],
      ),

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Text(title),

          Text(

            value,

            style: const TextStyle(

              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}