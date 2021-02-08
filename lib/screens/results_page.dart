import 'package:bmi_calculator/components/results_section.dart';
import 'package:flutter/material.dart';
import '../service/constants.dart';
import '../components/section.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Center(
              child: Text('Your Result', style: kResultsPageHeaderTextStyle),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Section(
            color: kActiveSectionColor,
            childWidget: ResultsSection(),
          ),
        ),
        BottomButton(
          label: 'SET PARAMETERS',
          onTap: () {
            Navigator.pop(context);
          },
        )
      ]),
    );
  }
}
