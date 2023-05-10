import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final navigation = ref.watch(bottomNavigationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
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
                  Text('ID : ${user!.userId}'),
                  Text('잔액 : 107,100원')
                ],
              ),
            ),
            Container(
                height: 60.h,
                width: 375.w,
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '고객님은 ',
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          color: Colors.black
                      ),
                    ),
                    Text(
                      user.typeNm,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14.sp,
                        color: Colors.orangeAccent
                      ),
                    ),
                    Text(
                      ' 계정으로 로그인 하셨습니다.',
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          color: Colors.black
                      ),
                    ),
                  ],
                )
            ),
            InkWell(
              onTap: () {
                ref.read(bottomNavigationProvider.notifier).state = 1;
              },
              child: Container(
                width: 280.w,
                height: 100.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 10.h, 0, 10.h),

                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.local_shipping,
                      size: 95.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '화물등록',
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontFamily: "NotoSansKR",
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(
                          '신규 화물오더 등록하기',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black87,
                            fontFamily: "NotoSansKR"
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Container(
                width: 280.w,
                height: 100.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 10.h, 0, 10.h),

                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.save_as,
                      size: 95.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '화물등록내역',
                          style: TextStyle(
                            fontSize: 28.sp,
                            fontFamily: "NotoSansKR",
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ref.read(bottomNavigationProvider.notifier).state = 2;
              },
              child: Container(
                width: 280.w,
                height: 100.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 10.h, 0, 10.h),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.help_center,
                      size: 95.sp,
                    ),
                    Container(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '고객센터',
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontFamily: "NotoSansKR",
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
