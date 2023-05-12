import 'package:flutter/material.dart';
class RestListScreen extends StatelessWidget {
  const RestListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('쉼터현황'),
      ),
      backgroundColor: Colors.white,
      body: Text('쉼터현황'),
    );
  }
}
