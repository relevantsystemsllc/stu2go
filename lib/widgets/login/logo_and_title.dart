import 'package:flutter/material.dart';

class AppLogoAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.contain,
        ),
        Text(
          "STU2GO",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 32.0,
            fontFamily: "Montserrat",
            letterSpacing: 9,
          ),
        ),
      ],
    );
  }
}
