import 'package:flutter/material.dart';
import 'package:bmi_calculator/service/constants.dart';

class IconSection extends StatelessWidget {
  final IconData icon;
  final String sexText;
  const IconSection({@required this.icon, @required this.sexText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icon, size: 120.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.sexText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
