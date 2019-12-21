import 'package:flutter/material.dart';

class StudioDetailSection extends StatelessWidget {
  const StudioDetailSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'NAME',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Name',
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
          'ADDRESS',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Address',
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
          'EMAIL',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Email',
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
          'PASSWORD',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xff7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Password',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff7D87A4).withOpacity(0.3),
              ),
            ),
            hintStyle: TextStyle(
              fontFamily: 'Avenir',
              letterSpacing: 0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          obscureText: true,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Avenir',
            letterSpacing: 3,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
