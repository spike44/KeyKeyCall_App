import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
class MyPageScreen extends ConsumerWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지'),
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
                  Text('쪽지/알림 : 0'),
                  Text('잔액 : 107,100원')
                ],
              ),
            ),
            InkWell(
              onTap: () {
                context.pushNamed('electronicTaxSend');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.money,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('전자세금계산서 (발행) 내역'),
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
                context.pushNamed('eletronicTaxRecv');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.money,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('전자세금계산서 (수신) 내역'),
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
                context.pushNamed('virtualAccount');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.wallet,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('가상계좌 정보'),
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
                context.pushNamed('cardPayment');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.credit_card,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('카드결제지원 서비스'),
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
                context.pushNamed('registList');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.save_as,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('화물등록내역'),
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
                context.pushNamed('alarm');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.notifications,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('쪽지/알림'),
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
                context.pushNamed('contractAgreement');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.assignment,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('약관 및 계약 동의내역'),
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
                context.pushNamed('myInfo');
                ref.read(bottomNavigationProvider.notifier).state = 3;
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
                      Icons.manage_accounts,
                      size: 20.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      alignment: Alignment.centerLeft,
                      child: Text('내정보'),
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
