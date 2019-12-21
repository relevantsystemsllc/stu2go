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
    //   SystemUiOverlayStyle.dark.copyWith(
    //     // statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.light,
    //     statusBarColor: Theme.of(context).primaryColor,
    //     systemNavigationBarColor: Theme.of(context).primaryColor,
    //     systemNavigationBarIconBrightness: Brightness.light,
    //   ),
    // );

    _goToArtistSignUp() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return AnnotatedRegion(
            value: SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: SignUp(role: 'Artist'),
          );
        }),
      );
    }

    _goToEngineerSignUp() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return AnnotatedRegion(
            value: SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: SignUp(role: 'Engineer'),
          );
        }),
      );
    }

    _goToRecStudioSignUp() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return AnnotatedRegion(
            value: SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: SignUp(role: 'RecStudio'),
          );
        }),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
                outlineColor: Colors.white,
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onTap: _goToEngineerSignUp,
                text: 'ENGINEER',
                outlineColor: Colors.white,
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onTap: _goToRecStudioSignUp,
                text: 'RECORDING STUDIO',
                outlineColor: Colors.white,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
