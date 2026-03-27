import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme/app_theme.dart';

import 'viewmodels/auth_viewmodel.dart';
import 'viewmodels/home_viewmodel.dart';

import 'views/screens/login_screen.dart';
import 'views/screens/home_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(

      providers: [

        ChangeNotifierProvider(
          create: (_) => AuthViewModel(),
        ),

        ChangeNotifierProvider(
          create: (_) => HomeViewModel(),
        ),
      ],

      child: MaterialApp(

        debugShowCheckedModeBanner: false,

        title: "PhonePe Clone",

        theme: AppTheme.lightTheme,

        home: const RootScreen(),
      ),
    );
  }
}

class RootScreen extends StatelessWidget {

  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final auth = context.watch<AuthViewModel>();

    if(auth.isLoggedIn){

      return const HomeScreen();
    }

    return const LoginScreen();
  }
}