import 'package:flutter/material.dart';

class Result with ChangeNotifier {
  String _result;
  String get result => _result;

  void updateResult(String value) {
    _result = value;
    notifyListeners();
  }
}
