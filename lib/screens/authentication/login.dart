import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/signin.dart';
import 'package:stealthzero/services/auth.dart';
import 'package:stealthzero/shared/loading.dart';

class LogIn extends StatefulWidget {
 /* final Function toggleView;
  LogIn({this.toggleView});*/

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';

  static Color col1 = const Color(0xff557089);

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
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
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
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
                  SizedBox(height: 20.0),
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
                      if(_formKey.currentState.validate()){
                        setState(() {
                          loading = true;
                        });
                        dynamic result = await _auth.logInWithEmail(email, password);
                        if(result == null){
                          setState(() {
                            loading = false;
                          });
                          setState(() {
                            error = 'could not sign in with those credentials';
                          });
                        }
                      }
                    },
                  ),
                  TextButton.icon(
                    label: Text('New Account? Sign In here'),
                    icon: Icon(Icons.person_add),
                    onPressed: (){
                      Navigator.pop(
                        context,
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
