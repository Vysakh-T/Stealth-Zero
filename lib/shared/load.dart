import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0C756),
      child: Center(
        child: SpinKitRotatingCircle(
          color: Color(0xff66696b),
          size: 50.0,
        ),
      ),

    );
  }
}
