import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OrderListScreen extends ConsumerWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오더현황'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(),
            Column(
                children: [
                  ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1톤이하/1.4톤'
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('총:'),
                            Text('1407')
                          ],
                        )
                      ],
                    ),
                    initiallyExpanded: true,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '서울',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '380',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                          color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '인천',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '218',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                          color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경기북부',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '479',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                          color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경기남부',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '644',
                                        style: TextStyle(
                                          fontFamily: "NanumGothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,                                            
                                          color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '충북',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '175',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '충남(대전,세종)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '309',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '전북',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '124',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '전남',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '228',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경북(대구)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '355',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경남(부산,울산)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '350',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '강원',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '70',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '제주',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '1',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '2/3.5톤'
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('총:'),
                            Text('3333')
                          ],
                        )
                      ],
                    ),
                    initiallyExpanded: false,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '서울',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '380',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '인천',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '218',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경기북부',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '479',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경기남부',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '644',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '충북',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '175',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '충남(대전,세종)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '309',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '전북',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '124',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '전남',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '228',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경북(대구)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '355',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경남(부산,울산)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '350',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '강원',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '70',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '제주',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '1',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '5톤이상'
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('총:'),
                            Text('5537')
                          ],
                        )
                      ],
                    ),
                    initiallyExpanded: false,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '서울',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '380',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '인천',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '218',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경기북부',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '479',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경기남부',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '644',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '충북',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '175',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '충남(대전,세종)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '309',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '전북',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '124',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '전남',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '228',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경북(대구)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '355',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '경남(부산,울산)',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '350',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '강원',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '70',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 0, 0),
                                      width: 80.w,
                                      height: 25.h,
                                      child:Text(
                                        '제주',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.w, 5.h),
                                      width: 80.w,
                                      height: 25.h,
                                      alignment: Alignment.centerRight,
                                      child:Text(
                                        '1',
                                        style: TextStyle(
                                            fontFamily: "NanumGothic",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.sp,
                                            color: Colors.indigoAccent
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
