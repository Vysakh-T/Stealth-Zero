import 'package:flutter/material.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key key}) : super(key: key);

  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  String qrCodeResult = 'Not yet scanned';
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage('assets/images/SZ.png')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Result',
              style: TextStyle(fontSize: 20.0,),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () async{
                  String codeScanner = await BarcodeScanner.scan();    //barcode scanner
                  setState(() {
                    qrCodeResult = codeScanner;
                  });
                },
                child: Text('Open Scanner',
            style: TextStyle(color: Colors.indigo[400]),
               )
            )
          ],
        ),
      ),
    );
  }
}
