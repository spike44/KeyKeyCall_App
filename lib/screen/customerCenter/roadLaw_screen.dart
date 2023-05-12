import 'package:flutter/material.dart';
class RoadLawScreen extends StatelessWidget {
  const RoadLawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도로법상 적재중량 제한기준'),
      ),
      backgroundColor: Colors.white,
      body: Text('도로법상 적재중량 제한기준'),
    );
  }
}
