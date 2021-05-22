import 'package:flutter/material.dart';
import 'package:stealthzero/services/auth.dart';

class CustomerHome extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image(image: AssetImage('assets/images/SZ.png')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
         actions: <Widget>[
           TextButton.icon(
             style: TextButton.styleFrom(
               primary: Color(0xff557089),

               ),
               onPressed: ()  async {
                 await _auth.signOut();
               },
               icon: Icon(Icons.account_circle_rounded),
               label: Text('sign out'))
         ],
      ),
      body: Container(
        child: Column(
          children: [
            Text('WELCOME HOME',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0)
              ),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff557089),
                ),
                child: Text('Scan QR code',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
            )

          ],
        ),
      ),
    );
  }
}
