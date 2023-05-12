import 'package:flutter/material.dart';
class RemoteControlScreen extends StatelessWidget {
  const RemoteControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('원격지원'),
      ),
      backgroundColor: Colors.white,
      body: Text('원격지원'),
    );
  }
}
