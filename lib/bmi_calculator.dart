import 'package:flutter/material.dart';
import 'screens/set_page.dart';
import 'service/constants.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SetPage(
        title: 'BMI Calculator',
      ),
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
            overlayShape:
                RoundSliderOverlayShape(overlayRadius: kSliderOverlayRadius),
            thumbColor: kThumbColor,
            overlayColor: kOverlayColor,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: kSliderThumbRadius,
            ),
            inactiveTrackColor: kRegularColor,
            activeTrackColor: Colors.white),
      ),
    );
  }
}
