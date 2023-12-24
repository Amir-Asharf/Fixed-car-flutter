import 'package:flutter/material.dart';
import 'package:untitled1/project/signup.dart';
import 'homebage.dart';
import 'login.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
      theme:
          ThemeData(textTheme: TextTheme(headline6: TextStyle(fontSize: 20))),
      routes: {
        "login": (context) => login(),
        "signup": (context) => signup(),
        "homebage": (context) => homebage(),
      },
    );
  }
}
