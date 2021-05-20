import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
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
