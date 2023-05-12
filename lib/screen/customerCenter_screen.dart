import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
class CustomerCenterScreen extends ConsumerWidget {
  const CustomerCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('고객센터'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40.h,
                width: 375.w,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('위치 : 경남/김해시'),
                    Text('잔액 : 107,100원')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('notice');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.list_alt,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('공지사항'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('orderList');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.table_chart_outlined,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('오더현황'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('restList');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.map,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('쉼터현황'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('centerCall');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.call,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('센터전화연결'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('qna');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.chat,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('문의'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('remoteControl');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.headphones,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('원격지원'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.pushNamed('roadLaw');
                  ref.read(bottomNavigationProvider.notifier).state = 2;
                },
                child: Container(
                  width: 375.w,
                  height: 60.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.bus_alert,
                        size: 20.sp,
                      ),
                      Container(
                        width: 20.w,
                      ),
                      Container(
                        width: 280.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Text('도로법상 적재중량 제한기준'),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
