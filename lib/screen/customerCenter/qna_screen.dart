import 'package:flutter/material.dart';
class QnaScreen extends StatelessWidget {
  const QnaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('문의'),
      ),
      backgroundColor: Colors.white,
      body: Text('문의'),
    );
  }
}
