import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stealthzero/screens/authentication/log_signin.dart';
import 'package:stealthzero/screens/wrapper/wrapper.dart';
import 'package:stealthzero/services/auth.dart';
import 'models/user.dart';
import 'screens/authentication/log_signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
