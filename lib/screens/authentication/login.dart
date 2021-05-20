import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/login.dart';
import 'package:stealthzero/screens/authentication/signin.dart';
import 'package:stealthzero/services/auth.dart';

class LogIn extends StatefulWidget {
 /* final Function toggleView;
  LogIn({this.toggleView});*/

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final AuthService _auth = AuthService();

  //text field state
  String email = '';
  String password = '';

  static Color col1 = const Color(0xff557089);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Image(image: AssetImage('assets/images/SZlogin.png')),
            SizedBox(height: 50.0),
            Text('Log In',
                style: TextStyle(
                    color: col1,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 30.0)),
            Form(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  }),
                  SizedBox(height: 20.0),
                  TextFormField(
                      obscureText: true,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      }),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff557089),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 18.0),
                    ),
                    onPressed: () async {
                      print(email);
                      print(password);
                    },
                  ),
                  TextButton.icon(
                    label: Text('New Account? Sign In here'),
                    icon: Icon(Icons.person_add),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
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
