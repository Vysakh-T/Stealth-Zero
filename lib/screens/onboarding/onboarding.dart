import 'package:flutter/material.dart';
import 'package:stealthzero/constants.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Center(child: Image(image: AssetImage('Loading.jpg'))),
          Column(
            children: [
              Text('StealthZero',
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      color: kWhite)),
              Text('Scan Your Way,\n    On The Go.',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: kWhite))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          )
        ],
      ),
    );
  }
}
