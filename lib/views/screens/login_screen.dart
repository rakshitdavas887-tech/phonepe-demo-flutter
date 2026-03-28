import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            colors: [

              Color(0xff2E1065),
              Color(0xff5F259F),
              Color(0xff9333EA),

            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

          ),

        ),

        child: Center(

          child: SingleChildScrollView(

            child: Container(

              margin: const EdgeInsets.all(24),
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(

                color: Colors.white.withOpacity(.08),

                borderRadius: BorderRadius.circular(20),

                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),

              ),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    "Welcome Back!",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    "Login to continue",
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 30),

                  field("Email", emailController),

                  const SizedBox(height: 16),

                  field(
                    "Password",
                    passController,
                    isPass: true,
                  ),

                  const SizedBox(height: 20),

                  SizedBox(

                    width: double.infinity,

                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(

                        padding: const EdgeInsets.all(14),

                        backgroundColor: const Color(0xff9333EA),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),

                      ),

                      onPressed: () {

                        Navigator.pushReplacement(

                          context,

                          MaterialPageRoute(
                            builder: (_) => const HomeScreen(),
                          ),

                        );

                      },

                      child: const Text("Sign in"),

                    ),

                  ),

                  const SizedBox(height: 20),

                  Center(

                    child: GestureDetector(

                      onTap: () {

                        Navigator.push(

                          context,

                          MaterialPageRoute(
                            builder: (_) => const SignupScreen(),
                          ),

                        );

                      },

                      child: const Text(
                        "Create account",
                        style: TextStyle(color: Colors.white),
                      ),

                    ),

                  ),

                ],

              ),

            ),

          ),

        ),

      ),

    );

  }

  Widget field(
      String hint,
      TextEditingController controller, {
        bool isPass = false,
      }) {

    return TextField(

      controller: controller,

      obscureText: isPass ? hidePass : false,

      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(

        hintText: hint,

        hintStyle: const TextStyle(color: Colors.white54),

        filled: true,

        fillColor: Colors.white.withOpacity(.08),

        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(12),

          borderSide: BorderSide.none,

        ),

        suffixIcon: isPass
            ? IconButton(

          icon: Icon(

            hidePass
                ? Icons.visibility_off
                : Icons.visibility,

            color: Colors.white,

          ),

          onPressed: () {

            setState(() {

              hidePass = !hidePass;

            });

          },

        )
            : null,

      ),

    );

  }

}