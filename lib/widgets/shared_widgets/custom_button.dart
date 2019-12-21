import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key, this.onTap, this.text}) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(
            27.5,
          ),
          gradient: LinearGradient(
            colors: [
              Color(0xff448AFF),
              Color(0xff2962FF),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.15),
              blurRadius: 6,
              offset: Offset(0, 4),
            )
          ],
        ),
        height: 55,
        width: 250,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Avenir',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
