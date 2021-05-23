import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key key}) : super(key: key);

  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override

  Widget build(BuildContext context) {
    return Container();
  }
}
