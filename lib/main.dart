import 'package:flutter/material.dart';
import 'package:stu2go_flutter/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stu2go',
      theme: ThemeData(
        // primaryColor: Color.fromARGB(255, 41, 98, 255),
        primaryColor: Color(0xFF2962FF),
        fontFamily: 'Avenir',
      ),
      home: LoginScreen(),
    );
  }
}
