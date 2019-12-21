import 'package:flutter/material.dart';
import 'package:stu2go_flutter/screens/login_screen.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/custom_button.dart';
import 'package:stu2go_flutter/widgets/signup/account_details_section.dart';
import 'package:stu2go_flutter/widgets/signup/artist_details_section.dart';
import 'package:stu2go_flutter/widgets/signup/engineer_details_section.dart';
import 'package:stu2go_flutter/widgets/signup/payment_section.dart';
import 'package:stu2go_flutter/widgets/signup/profile_pic..dart';
import 'package:stu2go_flutter/widgets/signup/studio_details_section.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key, this.role}) : super(key: key);
  final String role;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _agree = false;

  void _setAgreeStatus(bool value) {
    setState(() {
      _agree = value;
    });
  }

  _signIn() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  List<Widget> _buildSignUpPage(String role) {
    switch (role) {
      case 'Artist':
        return _buildArtistSignUp();
        break;
      case 'Engineer':
        return _buildEngineerSignUp();
        break;
      case 'RecStudio':
        return _buildStudioSignUp();
        break;
      default:
        return _buildArtistSignUp();
    }
  }

  List<Widget> _buildArtistSignUp() {
    return [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 15,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Center(
                child: Text(
                  'Create an account to continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Avenir',
                    color: Color(0xFF7D87A4),
                  ),
                ),
              ),
            ),
            ProfilePic(),
            ArtistDetailSection(),
            SizedBox(
              height: 40,
            ),
            PaymentSection(),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              onChanged: _setAgreeStatus,
              value: _agree,
            ),
            Text(
              'I agree with User Agreement',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Avenir',
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          children: <Widget>[
            CustomButton(
              onTap: null,
              text: 'SIGN UP',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ALREADY HAVE AN ACCOUNT?',
                  style: TextStyle(
                    color: Color(0xff7D87A4),
                  ),
                ),
                FlatButton(
                  onPressed: _signIn,
                  child: Text(
                    'SIGN IN',
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
    ];
  }

  List<Widget> _buildStudioSignUp() {
    return [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 15,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Center(
                child: Text(
                  'Create an account to continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Avenir',
                    color: Color(0xFF7D87A4),
                  ),
                ),
              ),
            ),
            ProfilePic(),
            StudioDetailSection(),
            SizedBox(
              height: 40,
            ),
            AccountSection(),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              onChanged: _setAgreeStatus,
              value: _agree,
            ),
            Text(
              'I agree with User Agreement',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Avenir',
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          children: <Widget>[
            CustomButton(
              onTap: null,
              text: 'SIGN UP',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ALREADY HAVE AN ACCOUNT?',
                  style: TextStyle(
                    color: Color(0xff7D87A4),
                  ),
                ),
                FlatButton(
                  onPressed: _signIn,
                  child: Text(
                    'SIGN IN',
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
    ];
  }

  List<Widget> _buildEngineerSignUp() {
    return [
      Padding(
        padding: EdgeInsets.only(
          left: 40,
          right: 40,
          top: 15,
          bottom: 0,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Center(
                child: Text(
                  'Create an account to continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Avenir',
                    color: Color(0xFF7D87A4),
                  ),
                ),
              ),
            ),
            ProfilePic(),
            EngineerDetailSection(),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Radio(
              groupValue: false,
              onChanged: null,
              value: false,
            ),
            Text(
              'YES',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Avenir',
                color: Theme.of(context).primaryColor,
              ),
            ),
            Radio(
              groupValue: true,
              onChanged: null,
              value: false,
            ),
            Text(
              'NO',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Avenir',
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            AccountSection(),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              onChanged: _setAgreeStatus,
              value: _agree,
            ),
            Text(
              'I agree with User Agreement',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Avenir',
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          children: <Widget>[
            CustomButton(
              onTap: null,
              text: 'SIGN UP',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ALREADY HAVE AN ACCOUNT?',
                  style: TextStyle(
                    color: Color(0xff7D87A4),
                  ),
                ),
                FlatButton(
                  onPressed: _signIn,
                  child: Text(
                    'SIGN IN',
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
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: _buildSignUpPage(widget.role),
      ),
    );
  }
}
