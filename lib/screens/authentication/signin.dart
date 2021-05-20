
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/login.dart';
import 'package:stealthzero/services/auth.dart';
class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  static Color col1 = const Color(0xff557089);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0 ),
        child: Column(
            children:
              [Text('Sign In',
              style: TextStyle(color:col1, fontWeight: FontWeight.bold, fontFamily: 'Montserrat', fontSize: 50.0 )
               ),
              Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                        onChanged: (val){

                        }
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      onChanged: (val){

                      }
                    )
                  ],
                ),
              )
           ],
        ),
      ),
    );
  }
}
