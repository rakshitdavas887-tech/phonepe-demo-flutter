import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animations/animations.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'theme/app_theme.dart';

import 'viewmodels/auth_viewmodel.dart';
import 'viewmodels/home_viewmodel.dart';
import 'viewmodels/profile_viewmodel.dart';

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

        ChangeNotifierProvider(
          create: (_) => ProfileViewModel(),
        ),
      ],

      child: MaterialApp(

        debugShowCheckedModeBanner: false,

        title: "PhonePe Clone",

        theme: AppTheme.lightTheme,

        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          ],
        ),

        onGenerateRoute: (settings) {
          return PageRouteBuilder(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) {
              // Map your routes here
              if (settings.name == '/') return const RootScreen();
              if (settings.name == '/home') return const HomeScreen();
              return const RootScreen();
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return SharedAxisTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
                child: child,
              );
            },
          );
        },

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