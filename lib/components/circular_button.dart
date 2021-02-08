import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  CircularButton({@required this.icon, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 10.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
