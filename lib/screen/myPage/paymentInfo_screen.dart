import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PaymentInfoScreen extends ConsumerWidget {
  const PaymentInfoScreen({Key? key}) : super(key: key);

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
                width: 70.w,
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
                  '오더상태',
                  style: TextStyle(
                    fontFamily: "NanumGothic",
                    fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 300.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '배차완료',
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
                width: 70.w,
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
                  '운송료',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 115.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '90,000',
                      style: TextStyle(
                        fontFamily: "NanumGothic",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.red
                      ),
                    ),
                    Text(
                      '원',
                      style: TextStyle(
                          fontFamily: "NanumGothic",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )

              ),
              Container(
                width: 70.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '수수료',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                  width: 115.w,
                  height: 40.h,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black12
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.red
                        ),
                      ),
                      Text(
                        '원',
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  )

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70.w,
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
                  '결제방법',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 115.w,
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
                  '선/착불',
                  style: TextStyle(
                    fontFamily: "NanumGothic",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Container(
                width: 70.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '합계금액',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                  width: 115.w,
                  height: 40.h,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black12
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '90,000',
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.red
                        ),
                      ),
                      Text(
                        '원',
                        style: TextStyle(
                            fontFamily: "NanumGothic",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  )

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70.w,
                height: 80.h,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Text(
                  '계산서',
                  style: TextStyle(
                      fontFamily: "NanumGothic",
                      fontSize: 15.sp
                  ),
                ),
              ),
              Container(
                width: 300.w,
                height: 80.h,
                alignment: Alignment.centerLeft,
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
                      width: 180.w,
                      height: 40.h,
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '미발행',
                        style: TextStyle(
                          fontFamily: "NanumGothic",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    Container(
                      width: 190.w,
                      height: 30.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.money,
                            size: 25.sp,
                            color: Colors.white,
                          ),
                          Text(
                            '전자세금계산서 발행',
                            style: TextStyle(
                                fontFamily: "NanumGothic",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                )
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
      )
    );
  }
}