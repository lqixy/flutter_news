import 'package:flutter/material.dart';

bool validEmail(String input) {
  if (input == null || input.isEmpty) return false;

  String regexEmail =
      '^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+\$';

  return RegExp(regexEmail).hasMatch(input);
}

bool validPwd(String input) {
  if (input == null || input.isEmpty) return false;
  String regexPwd = '^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}\$';

  return RegExp(regexPwd).hasMatch(input);
}
