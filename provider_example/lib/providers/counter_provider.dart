import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  void increment() {
    _counter++;

    notifyListeners();
  }

  void decrement() {
    _counter--;

    notifyListeners();
  }

  void reset() {
    _counter = 0;

    notifyListeners();
  }
}
