import 'package:flutter/material.dart';

class ProfileViewModel extends ChangeNotifier {

  String name = "Rakshit Davas";
  String email = "rakshit@email.com";
  String phone = "9876543210";
  String upiId = "rakshit@upi";

  void updateProfile({

    required String newName,
    required String newEmail,
    required String newPhone,
    required String newUpi,
  }) {

    name = newName;
    email = newEmail;
    phone = newPhone;
    upiId = newUpi;

    notifyListeners();
  }
}