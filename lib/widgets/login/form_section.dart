import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  const FormSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 5,
      ),
      child: Column(
        children: <Widget>[
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
            textAlign: TextAlign.center,
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
                letterSpacing: 0,
                fontFamily: 'Avenir',
                color: Theme.of(context).primaryColor,
              ),
            ),
            obscureText: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 3,
              fontFamily: 'Avenir',
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
