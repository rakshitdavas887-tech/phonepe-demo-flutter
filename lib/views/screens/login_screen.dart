import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/auth_viewmodel.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final auth = context.read<AuthViewModel>();

    return Scaffold(

      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(

              controller: emailController,

              style: const TextStyle(
                color: Colors.black,
              ),

              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),

            const SizedBox(height: 20),

            TextField(

              controller: passwordController,

              obscureText: true,

              style: const TextStyle(
                color: Colors.black,
              ),

              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: const Color(0xff5f259f),

                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                onPressed: () {

                  bool success = auth.login(

                    email: emailController.text,

                    password: passwordController.text,
                  );

                  if(success){

                    Navigator.pushReplacement(

                      context,

                      MaterialPageRoute(

                        builder: (_) => const HomeScreen(),
                      ),
                    );
                  }
                  else{

                    ScaffoldMessenger.of(context).showSnackBar(

                      const SnackBar(

                        content: Text(
                          "Invalid login",
                        ),
                      ),
                    );
                  }
                },

                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            TextButton(

              onPressed: () {

                Navigator.push(

                  context,

                  MaterialPageRoute(

                    builder: (_) => const SignupScreen(),
                  ),
                );
              },

              child: const Text(

                "Create account",

                style: TextStyle(
                  color: Color(0xff5f259f),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}