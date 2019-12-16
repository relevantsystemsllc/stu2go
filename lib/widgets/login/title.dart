import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "STU2GO",
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 32.0,
        fontFamily: "Montserrat",
        letterSpacing: 9,
      ),
    );
  }
}
