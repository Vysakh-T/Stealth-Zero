import 'package:flutter/material.dart';
import 'package:stealthzero/services/auth.dart';

class Profile extends StatelessWidget {

 final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
       child: ElevatedButton(onPressed: () async{
         await _auth.signOut();},
        child: new Text('Sign Out',
        style: new TextStyle(
          color: Colors.indigo[750],
         ),
        ),
      ),
      ),
    );

  }
}
