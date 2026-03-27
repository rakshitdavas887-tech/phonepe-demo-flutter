import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {

  String? _email;
  String? _password;
  String? _name;

  bool isLoggedIn = false;

  bool signup({
    required String name,
    required String email,
    required String password,
  }) {

    _name = name;
    _email = email;
    _password = password;

    notifyListeners();

    return true;
  }

  bool login({
    required String email,
    required String password,
  }) {

    if(email == _email && password == _password){

      isLoggedIn = true;
      notifyListeners();

      return true;
    }

    return false;
  }

  void logout(){

    isLoggedIn = false;
    notifyListeners();
  }

  String get userName => _name ?? "User";
}