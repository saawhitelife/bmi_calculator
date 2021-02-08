import 'package:flutter/material.dart';
import 'bmi_calculator.dart';
import 'service/providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BMIProvider(),
      child: BMICalculator(),
    ),
  );
}
