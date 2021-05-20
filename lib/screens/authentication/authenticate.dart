import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/signin.dart';
import 'package:stealthzero/screens/authentication/login.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showLoginIn = true;

  void toggleView() {
    setState(() => showLoginIn =! showLoginIn);
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginIn) {
      return LogIn(toggleView: toggleView);
    } else {
      return SignIn(toggleView: toggleView);
    }
  }
}
