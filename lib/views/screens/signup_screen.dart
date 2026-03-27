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

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final authVM = Provider.of<AuthViewModel>(context);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Signup"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Form(

          key: formKey,

          child: Column(

            children: [

              TextFormField(

                controller: nameController,

                decoration: const InputDecoration(
                  labelText: "Name",
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(

                controller: emailController,

                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(

                controller: passwordController,

                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(

                onPressed: () {

                  bool success = authVM.signup(
                    nameController.text,
                    emailController.text,
                    passwordController.text,
                  );

                  if (success) {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                    );
                  }
                },

                child: const Text("Signup"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}