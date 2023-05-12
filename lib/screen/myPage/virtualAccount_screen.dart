import 'package:flutter/material.dart';
class VirtualAccountScreen extends StatelessWidget {
  const VirtualAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('가상계좌정보'),
      ),
      backgroundColor: Colors.white,
      body: Text('가상계좌정보'),
    );
  }
}
