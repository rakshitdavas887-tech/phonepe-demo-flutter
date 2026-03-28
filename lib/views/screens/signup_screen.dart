import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SignupScreen extends StatefulWidget {

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();

}

class _SignupScreenState extends State<SignupScreen> {

  final nameController = TextEditingController();
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
                    "Get Started Free",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 30),

                  field("Name", nameController),

                  const SizedBox(height: 16),

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

                      child: const Text("Sign up"),

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