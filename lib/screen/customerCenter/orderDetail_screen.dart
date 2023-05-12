import 'package:flutter/material.dart';
class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오더현황'),
      ),
      backgroundColor: Colors.white,
      body: Text('오더현황'),
    );
  }
}
