import 'package:flutter/material.dart';
import 'package:bmi_calculator/service/constants.dart';
import 'package:provider/provider.dart';
import 'package:bmi_calculator/service/providers.dart';

class ResultsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(context.read<BMIProvider>().getVerdict(),
              style: kVerdictTextStyle),
          Text(context.read<BMIProvider>().bmi, style: kIndexTextStyle),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              context.read<BMIProvider>().getDescription(),
              style: kCommentTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ]);
  }
}
