import 'package:flutter/material.dart';
class MyInfoScreen extends StatelessWidget {
  const MyInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내정보'),
      ),
      backgroundColor: Colors.white,
      body: Text('내정보'),
    );
  }
}
