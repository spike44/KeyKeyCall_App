import 'package:flutter/material.dart';
class AlarmScreen extends StatelessWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('쪽지/알림'),
      ),
      backgroundColor: Colors.white,
      body: Text('쪽지/알림'),
    );
  }
}
