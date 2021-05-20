import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/login.dart';
import 'package:stealthzero/services/auth.dart';

class SignIn extends StatefulWidget {
  //final Function toggleView;

 //ignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
  String email = '';
  String password = '';
  String error = '';

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
            SizedBox(height: 20.0),
            Text(
              'Sign Up for StealthZero',
              style: TextStyle(
                  color: Color(0xff557089),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'email',
                    ),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      }),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'password',
                    ),
                      validator: (val) => val.length<6? 'Enter a password having more than 6 characters' : null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      }),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff557089),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 18.0),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        dynamic result = await _auth.signUp(email, password);
                        if(result == null){
                          setState(() {
                            error = 'please supply a valid email';
                          });

                        }
                      }
                    },
                  ),
                  TextButton.icon(
                    label: Text('Already have an account? Login here'),
                    icon: Icon(Icons.login),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                    },
                  ),
                  Text(error,
                  style: TextStyle(color: Colors.red, fontSize:14.0),
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
