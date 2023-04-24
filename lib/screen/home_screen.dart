import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('ID : 20272'),
                Text('잔액 : 107,100원')
              ],
            ),
          ),
          Container(
              height: 40.h,
              alignment: Alignment.center,
              child: Text('고객님은 주선사 계정으로 로그인 하셨습니다.')
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,

          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
