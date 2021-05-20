import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stealthzero/screens/wrapper/wrapper.dart';
import 'package:stealthzero/services/auth.dart';
import 'models/user.dart';
import 'screens/onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return StreamProvider<User>.value(
    //   value: AuthService().user,
    //   child: MaterialApp(
    //     home: Wrapper(),
    //   ),
    // );
    return MaterialApp(
      home: OnBoarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
