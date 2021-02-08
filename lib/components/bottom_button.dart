import 'package:flutter/material.dart';
import 'package:bmi_calculator/service/constants.dart';

class BottomButton extends StatelessWidget {
  final Function _onTap;
  final String _label;

  BottomButton({label, onTap})
      : _onTap = onTap,
        _label = label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomBarHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            _label,
            style: kBottomBarTextStyle,
          ),
        ),
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        decoration: BoxDecoration(
          color: kBottomBarColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
      ),
    );
  }
}
