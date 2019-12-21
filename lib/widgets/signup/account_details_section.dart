import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'ACCOUNT DETAILS',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'ACCOUNT NUMBER',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '************',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff7D87A4).withOpacity(0.3),
              ),
            ),
            hintStyle: TextStyle(
              fontFamily: 'Avenir',
              color: Theme.of(context).primaryColor,
            ),
          ),
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Avenir',
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'ROUTING NUMBER',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '************',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff7D87A4).withOpacity(0.3),
              ),
            ),
            hintStyle: TextStyle(
              fontFamily: 'Avenir',
              color: Theme.of(context).primaryColor,
            ),
          ),
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Avenir',
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
