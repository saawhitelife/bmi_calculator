import 'package:bmi_calculator/service/providers.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/setter_section.dart';
import 'package:bmi_calculator/components/slider_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_section.dart';
import 'package:bmi_calculator/components/section.dart';
import 'package:bmi_calculator/service/constants.dart';
import 'package:provider/provider.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

enum Genders { male, female }

class SetPage extends StatefulWidget {
  SetPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SetPageState createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  Genders selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Section(
                    onTap: () {
                      setState(() {
                        selectedGender = Genders.male;
                      });
                    },
                    color: selectedGender == Genders.male
                        ? kActiveSectionColor
                        : kInactiveSectionColor,
                    childWidget: IconSection(
                      icon: FontAwesomeIcons.mars,
                      sexText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Section(
                    onTap: () {
                      setState(() {
                        selectedGender = Genders.female;
                      });
                    },
                    color: selectedGender == Genders.female
                        ? kActiveSectionColor
                        : kInactiveSectionColor,
                    childWidget: IconSection(
                      icon: FontAwesomeIcons.venus,
                      sexText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Section(
              childWidget: SliderSection(),
              color: kActiveSectionColor,
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Section(
                    color: kActiveSectionColor,
                    childWidget: SetterSection(
                      consumer: Consumer<BMIProvider>(
                        builder: (context, bmiProvider, child) => Text(
                          '${bmiProvider.weight}',
                          style: kValueTextStyle,
                        ),
                      ),
                      onMinusTap: () {
                        BMIProvider setter = context.read<BMIProvider>();
                        setter.decrementWeight();
                      },
                      onPlusTap: () {
                        BMIProvider setter = context.read<BMIProvider>();
                        setter.incrementWeight();
                      },
                      label: 'WEIGHT',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Section(
                    color: kActiveSectionColor,
                    childWidget: SetterSection(
                      label: 'AGE',
                      consumer: Consumer<BMIProvider>(
                        builder: (context, bmiProvider, child) => Text(
                          '${bmiProvider.age}',
                          style: kValueTextStyle,
                        ),
                      ),
                      onPlusTap: () {
                        BMIProvider setter = context.read<BMIProvider>();
                        setter.incrementAge();
                      },
                      onMinusTap: () {
                        BMIProvider setter = context.read<BMIProvider>();
                        setter.decrementAge();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            label: 'CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
