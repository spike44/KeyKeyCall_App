import 'package:flutter/material.dart';
class ElectronicTaxRecvScreen extends StatelessWidget {
  const ElectronicTaxRecvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('전자세금계산서 수신 내역'),
      ),
      backgroundColor: Colors.white,
      body: Text('전자세금계산서 수신 내역'),
    );
  }
}
