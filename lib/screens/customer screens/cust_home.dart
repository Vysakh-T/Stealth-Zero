import 'package:flutter/material.dart';
import 'package:stealthzero/screens/authentication/signin.dart';
import 'package:stealthzero/screens/customer%20screens/profile.dart';

class CustomerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Text('WELCOME HOME',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0)),
            TextButton(
                child: Text('Nothing to see here, back to sign in '),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                }),
            TextButton.icon(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile()),);
                },
                icon: Icon(Icons.account_circle_rounded), label: Text('sign out')
            )
          ],
        ),
      ),
    );
  }
}
