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

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final authVM = Provider.of<AuthViewModel>(context);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Form(

          key: formKey,

          child: Column(

            children: [

              TextFormField(

                controller: emailController,

                decoration: const InputDecoration(
                  labelText: "Email",
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Enter email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              TextFormField(

                controller: passwordController,

                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                ),

                validator: (value) {

                  if (value == null || value.length < 4) {
                    return "Password min 4 char";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 30),

              ElevatedButton(

                onPressed: () {

                  if (formKey.currentState!.validate()) {

                    bool success = authVM.login(
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
                  }
                },

                child: const Text("Login"),
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

                child: const Text("Create account"),
              )
            ],
          ),
        ),
      ),
    );
  }
}