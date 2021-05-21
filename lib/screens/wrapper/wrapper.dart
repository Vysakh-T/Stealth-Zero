import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stealthzero/models/user.dart';
import 'package:stealthzero/screens/authentication/log_signin.dart';
import 'package:stealthzero/screens/authentication/login.dart';
import 'package:stealthzero/screens/authentication/signin.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // return either the Home or Authenticate widget
    if (user != null){
      return Profile();
    } else {
      return SignIn();
    }
  }
}
