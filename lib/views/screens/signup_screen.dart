import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/auth_viewmodel.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final auth = context.read<AuthViewModel>();

    return Scaffold(

      appBar: AppBar(title: const Text("Signup")),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(

              controller: nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),

            const SizedBox(height: 20),

            TextField(

              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),

            const SizedBox(height: 20),

            TextField(

              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),

            const SizedBox(height: 30),

            ElevatedButton(

              onPressed: () {

                auth.signup(

                  name: nameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                );

                Navigator.pushReplacement(

                  context,

                  MaterialPageRoute(

                    builder: (_) => const HomeScreen(),
                  ),
                );
              },

              child: const Text("Signup"),
            )
          ],
        ),
      ),
    );
  }
}