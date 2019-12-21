import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stu2go_flutter/screens/home_screen.dart';
import 'package:stu2go_flutter/screens/role_screen.dart';
import 'package:stu2go_flutter/widgets/login/form_section.dart';
import 'package:stu2go_flutter/widgets/login/logo.dart';
import 'package:stu2go_flutter/widgets/login/title.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _signUpSelectRole() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return AnnotatedRegion(
              value: SystemUiOverlayStyle.light.copyWith(
                statusBarColor: Theme.of(context).primaryColor,
                // statusBarIconBrightness: Brightness.dark,
              ),
              child: RoleScreen(),
            );
          },
        ),
      );
    }

    _signIn() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
      );
    }

    final screenHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        // statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        // systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: screenHeight * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AppLogo(),
                    AppTitle(),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.3,
                child: FormSection(),
              ),
              Container(
                height: screenHeight * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomButton(
                      text: 'SIGN IN',
                      onTap: _signIn,
                    ),
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
      ),
    );
  }
}
