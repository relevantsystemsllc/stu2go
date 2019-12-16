import 'package:flutter/material.dart';
import 'package:stu2go_flutter/screens/role_screen.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
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
            'SIGN IN',
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
