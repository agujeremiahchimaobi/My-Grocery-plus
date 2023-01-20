import 'package:flutter/material.dart';

class PasswordProvider with ChangeNotifier {
  bool isObscure = false;

  setVisibility() {
    isObscure = !isObscure;
    notifyListeners();
  }
}
