import 'package:flutter/material.dart';
class CenterCallScreen extends StatelessWidget {
  const CenterCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('센터전화연결'),
      ),
      backgroundColor: Colors.white,
      body: Text('센터전화연결'),
    );
  }
}
