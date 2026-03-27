import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {

  String? _email;
  String? _name;

  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;
  String? get email => _email;
  String? get name => _name;

  // LOGIN
  bool login(String email, String password) {

    if (email.isEmpty || password.isEmpty) {
      return false;
    }

    _email = email;
    _name = "User";

    _isLoggedIn = true;

    notifyListeners();

    return true;
  }

  // SIGNUP
  bool signup(String name, String email, String password) {

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      return false;
    }

    _name = name;
    _email = email;

    _isLoggedIn = true;

    notifyListeners();

    return true;
  }

  // LOGOUT
  void logout() {

    _isLoggedIn = false;
    _email = null;
    _name = null;

    notifyListeners();
  }
}