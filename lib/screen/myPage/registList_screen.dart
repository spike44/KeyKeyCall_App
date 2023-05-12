import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RegistListScreen extends ConsumerWidget {
  const RegistListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool? _isCheckAll = false;
    bool? _isCheckSubmit = false;
    bool? _isCheckComplete = false;
    bool? _isCheckCancel = false;
    bool? _isCheckAllMoney = false;
    bool? _isCheckCard = false;
    bool? _isCheckPaper = false;
    bool? _isCheckPrepaid = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('화물등록내역'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
            width: 375.w,
            height: 200.h,
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10.w, 5.h, 5.h, 5.w),
                      width: 120.w,
                      height: 30.h,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5.sp),
                          hintText: '2023-05-01',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.calendar_month
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.w, 5.h, 5.h, 5.w),
                      width: 120.w,
                      height: 30.h,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.sp),
                            hintText: '2023-05-01',
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                          Icons.calendar_month
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckAll,
                      onChanged: (value) {
                        _isCheckAll = value;
                      },
                    ),
                    Text('전체'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckSubmit,
                      onChanged: (value) {
                        _isCheckSubmit = value;
                      },
                    ),
                    Text('접수'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckComplete,
                      onChanged: (value) {
                        _isCheckSubmit = value;
                      },
                    ),
                    Text('배차완료'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckCancel,
                      onChanged: (value) {
                        _isCheckSubmit = value;
                      },
                    ),
                    Text('화물취소'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckAll,
                      onChanged: (value) {
                        _isCheckAll = value;
                      },
                    ),
                    Text('전체'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckSubmit,
                      onChanged: (value) {
                        _isCheckSubmit = value;
                      },
                    ),
                    Text('카드'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckComplete,
                      onChanged: (value) {
                        _isCheckSubmit = value;
                      },
                    ),
                    Text('인수증'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isCheckCancel,
                      onChanged: (value) {
                        _isCheckSubmit = value;
                      },
                    ),
                    Text('선/착불'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10.w, 5.h, 5.h, 5.w),
                      width: 210.w,
                      height: 30.h,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.sp),
                            hintText: '검색어를 입력하세요(화물번호,차주전화번호)',
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('지우기')
                    ),
                    Container(
                      width: 5.w,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('검색')
                    ),
                  ]
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10.sp),
              itemCount: 10,
              itemBuilder:(BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(0, 5.h, 0, 5.h),
                  width: 365.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('경기 여주 가남읍 본두리'),
                          Container(
                            width: 30.w,
                          ),
                          Text('당상'),
                          Container(
                            width: 5.w,
                          ),
                          Text('수')
                        ],
                      ),
                      Row(
                        children: [
                          Text('서울 마포 망원동'),
                          Container(
                            width: 71.w,
                          ),
                          Text('당착'),
                          Container(
                            width: 5.w,
                          ),
                          Text('수')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('40,000원'),
                          Column(
                            children: [
                              Text('04-21 16:28'),
                              Text('배차완료')
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text('혼적'),
                          Text('선/착불 운 4.0 + 수 0.0'),
                          Text('/'),
                          Text('0.3톤'),
                          Text('/'),
                          Text('다마스')
                        ],
                      )
                    ],
                  ),
                );
              }
            ),
          )
        ]
      )
    );
  }
}
