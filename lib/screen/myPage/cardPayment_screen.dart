import 'package:flutter/material.dart';
class CardPaymentScreen extends StatelessWidget {
  const CardPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카드결제지원 서비스'),
      ),
      backgroundColor: Colors.white,
      body: Text('카드결제지원 서비스'),
    );
  }
}
