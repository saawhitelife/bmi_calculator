import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({@required this.color, this.childWidget, this.onTap});

  final Function onTap;
  final Color color;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
