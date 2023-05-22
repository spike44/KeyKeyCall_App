import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CarOwnerInfoScreen extends ConsumerWidget {
  const CarOwnerInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75.w,
                height: 40.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 295.w,
                height: 40.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 5.w, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Container(
                    width: 120.w,
                    height: 35.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(2.w, 5.h, 0, 5.h),
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.indigoAccent
                        ),
                        minimumSize: MaterialStateProperty.all(
                            Size(120.w, 35.h)
                        ),
                      ),
                      child: Text(
                          style: TextStyle(
                              fontFamily: "NanumGothic",
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                          '차량 위치확인'
                      ),
                    )
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
                  '사업자번호',
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
                  '166-20-01554',
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
                  '상호',
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
                  '부자용달',
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
                  '대표자명',
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
                  '김선임',
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
                  '업태',
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
                    '운수',
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
                  '업종',
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
                    '화물',
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
                height: 100.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '사업장주소',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 295.w,
                height: 100.h,
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
                  '(우) 55052 전라북도 전주시 완산구 서원로 258, 301동 205호(효자동 1가, 비사벌@)',
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
                  '연락처',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '010-6624-0820',
                      style: TextStyle(
                          fontFamily: "NanumGothic",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      margin: EdgeInsets.fromLTRB(0, 0, 10.w, 0),
                      child: Icon(
                        Icons.call,
                        size: 30.sp,
                        color: Colors.white,
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
                height: 100.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '우편물주소',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 295.w,
                height: 100.h,
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
                  '(우) 55052 전라북도 전주시 완산구 안행9길 25 201동 209호(효자동 1가, 선변안행고을아파트',
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