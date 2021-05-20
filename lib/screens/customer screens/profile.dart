import 'package:flutter/material.dart';
import 'package:stealthzero/services/auth.dart';

class Profile extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await _auth.signOut();
          },
          child: Text(
            'Sign Out',
            style:
                TextStyle(color: Color(0xffffffff), fontFamily: 'Montserrat'),
          ),
          style: ButtonStyle(backgroundColor:
              MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
            // ignore: missing_return
            if (states.contains(MaterialState.pressed)) {
              return Color(0xff557089);
            }
            return null;
          })),
        ),
      ),
    );
  }
}
