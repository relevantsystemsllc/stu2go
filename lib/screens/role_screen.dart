import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stu2go_flutter/screens/signup.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/custom_outlined_button.dart';

class RoleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final page = ModalRoute.of(context);
    // page.didPush().then((f) {

    // });

    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     // statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Platform.isAndroid ? Brightness.light : null,
    //     statusBarColor:
    //         Platform.isAndroid ? Theme.of(context).primaryColor : null,
    //     systemNavigationBarColor:
    //         Platform.isAndroid ? Theme.of(context).primaryColor : null,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //   ),
    // );
    _goToArtistSignUp() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignUp(role: 'Artist'),
        ),
      );
    }

    _goToEngineerSignUp() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignUp(role: 'Engineer'),
        ),
      );
    }

    _goToRecStudioSignUp() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignUp(role: 'RecStudio'),
        ),
      );
    }

    return Material(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              'Please select your role to continue',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onTap: _goToArtistSignUp,
                text: 'ARTIST',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onTap: _goToEngineerSignUp,
                text: 'ENGINEER',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onTap: _goToRecStudioSignUp,
                text: 'RECORDING STUDIO',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
