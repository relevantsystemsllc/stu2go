import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stu2go_flutter/screens/role_screen.dart';
import 'package:stu2go_flutter/widgets/login/form_section.dart';
import 'package:stu2go_flutter/widgets/login/logo.dart';
import 'package:stu2go_flutter/widgets/login/sign_in_button.dart';
import 'package:stu2go_flutter/widgets/login/title.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    _signUpSelectRole() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => RoleScreen(),
        ),
      );
    }

    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AppLogo(),
                    AppTitle(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: FormSection(),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SignInButton(),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'DON’T HAVE AN ACCOUNT?',
                        style: TextStyle(
                          color: Color(0xff7D87A4),
                        ),
                      ),
                      FlatButton(
                        onPressed: _signUpSelectRole,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
