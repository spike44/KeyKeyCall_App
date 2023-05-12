import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RegistCargoScreen extends ConsumerWidget {
  const RegistCargoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('화물등록'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(),
                  color: Colors.white
              ),
              width: 375.w,
              height: 150.h,
              padding: EdgeInsets.all(5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375.w,
                    height: 45.h,
                    child: Row(
                      children: [
                        Text('상차주소 : '),
                        Container(
                          width: 280.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(),
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 375.w,
                    height: 45.h,
                    alignment: Alignment.center,
                    child: Text('선택된 주소 표시'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          width: 100.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                          child: Text('대표지역'),
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          width: 100.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                          child: Text('상차일자'),
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          width: 100.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                          child: Text('상차시간'),
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  )                 
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(),
                  color: Colors.white
              ),
              width: 375.w,
              height: 150.h,
              padding: EdgeInsets.all(5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375.w,
                    height: 45.h,
                    child: Row(
                      children: [
                        Text('하차주소 : '),
                        Container(
                          width: 280.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 375.w,
                    height: 45.h,
                    alignment: Alignment.center,
                    child: Text('선택된 주소 표시'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          width: 100.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                          child: Text('대표지역'),
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          width: 100.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                          child: Text('하차일자'),
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                          width: 100.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(),
                              color: Colors.white
                          ),
                          child: Text('하차시간'),
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(),
                  color: Colors.white
              ),
              width: 375.w,
              height: 150.h,
              padding: EdgeInsets.all(5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375.w,
                    height: 45.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 80.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(),
                                color: Colors.white
                            ),
                            child: Text('톤수'),
                            alignment: Alignment.center,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 80.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(),
                                color: Colors.white
                            ),
                            child: Text('차종'),
                            alignment: Alignment.center,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 80.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(),
                                color: Colors.white
                            ),
                            child: Text('상차방법'),
                            alignment: Alignment.center,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 80.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(),
                                color: Colors.white
                            ),
                            child: Text('하차방법'),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 375.w,
                    height: 45.h,
                    margin: EdgeInsets.fromLTRB(0, 5.h, 0, 5.h),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 100.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(),
                                color: Colors.white
                            ),
                            child: Text('대수'),
                            alignment: Alignment.center,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 100.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(),
                                color: Colors.white
                            ),
                            child: Text('결제수단'),
                            alignment: Alignment.center,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: 100.w,
                            height: 45.h,                            
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                  ),
                                  hintText: '중량'
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 375.w,
                    height: 35.h,
                    child: TextFormField(                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        hintText: '기타내용을 입력하세요'
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(),
                  color: Colors.white
              ),
              width: 375.w,
              height: 150.h,
              padding: EdgeInsets.all(5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375.w,
                    height: 45.h,
                    child: Row(
                      children: [
                        Text('운송료 : '),
                        Container(
                          width: 100.w,
                          height: 40.h,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                ),
                                hintText: '천원단위'
                            ),
                          ),
                        ),
                        Text(',000 원'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text('수수료 : '),
                      Container(
                        width: 100.w,
                        height: 40.h,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                              ),
                              hintText: '천원단위'
                          ),
                        ),
                      ),
                      Text(',000 원'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('총 합계 : '),
                      Container(
                        width: 100.w,
                        height: 40.h,
                        child: Text(''
                        ),
                      ),
                      Text(',000 원'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
