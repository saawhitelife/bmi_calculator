import 'package:flutter/material.dart';
import 'dart:math';

class BMIProvider with ChangeNotifier {
  double _bmi;
  double _height = 120;
  int get height => _height.round();
  int _age = 1;
  int get age => _age;
  int _weight = 70;
  int get weight => _weight;

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }

  void setHeight(height) {
    _height = height;
    calculateBMI();
    notifyListeners();
  }

  void incrementWeight() {
    _weight++;
    calculateBMI();
    notifyListeners();
  }

  void decrementWeight() {
    _weight--;
    calculateBMI();
    notifyListeners();
  }

  void calculateBMI() {
    _bmi = _weight / (pow(_height / 100, 2));
    print(_bmi);
  }

  String get bmi => _bmi.toStringAsFixed(1);

  String getVerdict() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You weight too much, you\'re a heavy guy. Consider visiting a gym';
    } else if (_bmi > 18) {
      return 'You bmi is absolutely normal. Keep on!';
    } else {
      return 'You\'re too light, please, eat more!';
    }
  }
}
