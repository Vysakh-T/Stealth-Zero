import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/signin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Text('WELCOME HOME',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0)
            ),
            TextButton(
                child: Text('Nothing to see here, back to sign in '),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                  );
                }
            ),
          ],
        ),

      ),


    );
  }
}