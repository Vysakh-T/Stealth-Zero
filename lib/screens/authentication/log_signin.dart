import 'package:flutter/material.dart';
import 'package:stealthzero/constants.dart';
import 'package:stealthzero/screens/authentication/signin.dart';

import 'login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              child: Image(
                image: AssetImage('assets/images/logsign.png'),
                fit: BoxFit.cover,
              )),
          Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                    },
                    child: Text('Log In',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[400],
                        padding: EdgeInsets.symmetric(
                            horizontal: 60.0, vertical: 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text('Sign In',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          color: Colors.indigo[400],
                        )),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.indigo[400],
                        backgroundColor: Colors.grey[100],
                        padding: EdgeInsets.symmetric(
                            horizontal: 56.0, vertical: 16.0),
                        side: BorderSide(color: Colors.indigo[400], width: 3.0),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
