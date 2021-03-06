import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stealthzero/screens/customer%20screens/cust_home.dart';
import 'package:stealthzero/services/auth.dart';
import 'package:stealthzero/shared/load.dart';

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

  static Color col1 = const Color.fromARGB(1, 85, 112, 137);

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Image(image: AssetImage('assets/images/SZ.png')),
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Container(
                    constraints: BoxConstraints.expand(),
                    child: Column(
                      children: [
                        Image(
                            image: AssetImage('assets/images/Open Doodles.png'))
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                    )),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 70.0),
                      Text('Log In.',
                          style: TextStyle(
                              color: Colors.indigo[400],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 56.0)),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'email',
                                ),
                                validator: (val) =>
                                    val.isEmpty ? 'Enter an email' : null,
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
                                validator: (val) => val.length < 6
                                    ? 'Enter a password having more than 6 characters'
                                    : null,
                                obscureText: true,
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                  });
                                }),
                            SizedBox(height: 40.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo[400],
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 66.0, vertical: 12.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              child: Text('Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  dynamic result = await _auth.logInWithEmail(
                                      email, password);
                                  setState(() {
                                    loading = true;
                                  });
                                  if (result == null) {
                                    setState(() {
                                      loading = false;
                                    });
                                    setState(() {
                                      error =
                                          'could not sign in with those credentials';
                                    });
                                  } else {
                                    Navigator.push(
                                      context,
                                      // ignore: unnecessary_statements
                                      MaterialPageRoute(
                                          builder: (context) => CustomerHome()),
                                    );
                                  }
                                }
                              },
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            TextButton.icon(
                              label: Text('New Account? Sign In here'),
                              icon: Icon(Icons.person_add),
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                            ),
                            Text(
                              error,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
