import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CargoInfoScreen extends ConsumerWidget {
  const CargoInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 375.w,
            height: 40.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(10.w, 2.h, 0, 0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              '배차시간 : 05-15 14:16',
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 15.sp
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 40.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '화물번호',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 295.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '2-8306-3790',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ],
          ),          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 90.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '상차지',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 295.w,
                height: 90.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:295.w,
                      height:55.h,
                      child: Text(
                        '경기 여주 가남읍 본두리 698-3 태은물류 1번도크',
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Container(
                      width:295.w,
                      height:30.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2.sp),
                            alignment: Alignment.center,
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.r)
                                ),
                                color: Colors.indigo
                            ),
                            child: Text(
                              '당상',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "NanumGothic",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.sp),
                            alignment: Alignment.center,
                            width: 20.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.r)
                                ),
                                color: Colors.amber
                            ),
                            child: Text(
                              '수',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "NanumGothic",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 90.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '하차지',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                  width: 295.w,
                  height: 90.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black12
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:295.w,
                        height:55.h,
                        child: Text(
                          '전북 전주 완산구 중앙동 4가 전라감영로 40-1',
                          style: TextStyle(
                              fontFamily: "NanumGothic",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      Container(
                        width:295.w,
                        height:30.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.center,
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.r)
                                  ),
                                  color: Colors.indigo
                              ),
                              child: Text(
                                '당착',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.center,
                              width: 20.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.r)
                                  ),
                                  color: Colors.amber
                              ),
                              child: Text(
                                '수',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 65.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '화물정보',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                  width: 295.w,
                  height: 65.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black12
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:295.w,
                        height:30.h,
                        child: Text(
                          '17시까지하차 혼적4박스 당일결재-A',
                          style: TextStyle(
                              fontFamily: "NanumGothic",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      Container(
                        width:295.w,
                        height:30.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.center,
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.r)
                                  ),
                                  color: Colors.black
                              ),
                              child: Text(
                                '혼적',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.yellow
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 40.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '톤수',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 110.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '0.3톤',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),

              ),
              Container(
                width: 75.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '차종',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 110.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '다마스',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 40.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '적재중량',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 110.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '0.1톤',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),

              ),
              Container(
                width: 75.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '운행방법',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 110.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '편도',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 90.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(2.w, 5.h, 0, 5.h),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.cyan
                      ),
                      minimumSize: MaterialStateProperty.all(
                          Size(90.w, 35.h)
                      ),
                    ),
                    child: Text(
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                        '배차취소'
                    ),
                  )
              ),
              Container(
                  width: 90.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(2.w, 5.h, 0, 5.h),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.red
                      ),
                      minimumSize: MaterialStateProperty.all(
                          Size(90.w, 35.h)
                      ),
                    ),
                    child: Text(
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                        '화물복사'
                    ),
                  )
              ),
              Container(
                  width: 90.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(2.w, 5.h, 0, 5.h),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.black54
                      ),
                      minimumSize: MaterialStateProperty.all(
                          Size(90.w, 35.h)
                      ),
                    ),
                    child: Text(
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                        '화물취소'
                    ),
                  )
              ),
              Container(
                  width: 90.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(2.w, 5.h, 0, 5.h),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.grey
                      ),
                      minimumSize: MaterialStateProperty.all(
                          Size(90.w, 35.h)
                      ),
                    ),
                    child: Text(
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                        '요약정보'
                    ),
                  )
              ),
            ],
          ),
          Container(
            width: 360.w,
            height: 50.h,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(7.w, 5.h, 0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                    width: 2.w,
                    color: Colors.lightGreen
                )
            ),
            child: Text(
              '화물정보변경',
              style: TextStyle(
                  fontFamily: "NanumGothic",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.lightGreen
              ),
            ),

          ),
        ],
      ),
    );
  }
}