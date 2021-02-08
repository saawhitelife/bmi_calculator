import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/service/constants.dart';
import 'circular_button.dart';
import 'package:provider/provider.dart';

class SetterSection extends StatefulWidget {
  final String _label;
  final Consumer<ChangeNotifier> _consumer;
  final Function _onPlusTap;
  final Function _onMinusTap;
  SetterSection(
      {@required String label,
      @required Consumer<ChangeNotifier> consumer,
      @required Function onMinusTap,
      @required Function onPlusTap})
      : _label = label,
        _consumer = consumer,
        _onPlusTap = onPlusTap,
        _onMinusTap = onMinusTap;
  @override
  _SetterSectionState createState() => _SetterSectionState();
}

class _SetterSectionState extends State<SetterSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget._label, style: kLabelTextStyle),
        widget._consumer,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: FontAwesomeIcons.minus,
              onTap: widget._onMinusTap,
            ),
            SizedBox(
              width: 10.0,
            ),
            CircularButton(
                icon: FontAwesomeIcons.plus, onTap: widget._onPlusTap)
          ],
        ),
      ],
    );
  }
}
