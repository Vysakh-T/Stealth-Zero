//first screen after splash screen, asking whether to login or sign in

import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/login.dart';
import 'package:stealthzero/screens/authentication/signin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage('assets/images/SZ.png')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Welcome to StealthZero',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30.0,
                color: Color(0xff557089)),
          ),
          Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff557089),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIn()),
                    );
                  },
                  child: Text(
                    'Existing user? Login here',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 30.0,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff557089),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),

                    );
                  },
                  child: Text(
                    'New here? Sign up now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
