import 'package:bmi_calculator/service/providers.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/service/constants.dart';
import 'package:provider/provider.dart';

class SliderSection extends StatefulWidget {
  @override
  _SliderSectionState createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  int _height = 120;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text(
            'HEIGHT',
            style: kLabelTextStyle,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              '$_height',
              style: kValueTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            )
          ],
        ),
        Slider(
          value: _height.toDouble(),
          focusNode: FocusNode(),
          min: kSliderMin,
          max: kSliderMax,
          label: _height.toString(),
          onChanged: (double value) {
            BMIProvider setter = context.read<BMIProvider>();
            setter.setHeight(value);
            setState(() {
              _height = value.toInt();
            });
          },
        ),
      ],
    );
  }
}
