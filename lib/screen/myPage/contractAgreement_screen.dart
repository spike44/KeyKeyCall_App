import 'package:flutter/material.dart';
class ContractAgreementScreen extends StatelessWidget {
  const ContractAgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약관 및 계약 동의내역'),
      ),
      backgroundColor: Colors.white,
      body: Text('약관 및 계약 동의내역'),
    );
  }
}
