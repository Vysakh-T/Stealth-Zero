import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/signin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/Vector-3.png')),
                  Image(
                      image: AssetImage('assets/images/Open Doodleslogin.png'))
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              )),
        ],
      ),
    );
  }
}
