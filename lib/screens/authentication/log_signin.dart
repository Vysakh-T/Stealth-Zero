import 'package:flutter/material.dart';
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
              )),
          Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
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
                          ))
                  ),
                  ElevatedButton(
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
                            color: Colors.white,
                          ))
                  ),

                ],
              )),
        ],
      ),
    );
  }
}
