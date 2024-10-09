import 'package:flutter/material.dart';

class UserProfile with ChangeNotifier{
  String name = "Abdülbaki Şen";
  String email = "user1@gmail.com";

void updateUser(String newName, String newEmail) {
  name = newName;
  email = newEmail;
  notifyListeners();
 }
}