import 'package:flutter/material.dart';
class MerchantHome extends StatefulWidget {
  const MerchantHome({Key key}) : super(key: key);

  @override
  _MerchantHomeState createState() => _MerchantHomeState();
}

class _MerchantHomeState extends State<MerchantHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        Text('THIS IS MERCHANT HOME', style: TextStyle(fontSize: 50.0, fontFamily: 'Montserrat'
        ),
        )
    );
  }
}
