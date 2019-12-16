import 'package:flutter/material.dart';

class OutlinedButton extends StatelessWidget {
  const OutlinedButton({Key key, this.onTap, this.text}) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
        ),
        margin: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(
            22.5,
          ),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        width: 200,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
