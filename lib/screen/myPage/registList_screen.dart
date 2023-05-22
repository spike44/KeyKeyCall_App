import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../main.dart';
import '../../model/registList_model.dart';
class RegistListScreen extends ConsumerWidget {
  const RegistListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final param = ref.watch(searchProvider);
    List<RegistListModel> list = [
      RegistListModel(
          '경기 여주 가남읍 본두리'
          , '당상'
          , '수'
          , '서울 마포 망원동'
          , '당착'
          , '수'
          , '40,000'
          , '04-21 16:28'
          , '배차완료'
          , '혼적'
          , '선/착불'
          , '0.3톤'
          , '다마스'
      ),
      RegistListModel(
          '서울 강서 김포공항'
          , '당상'
          , '지'
          , '서울 구로'
          , '당착'
          , '지'
          , '80,000'
          , '04-21 14:29'
          , '취소'
          , '독차'
          , '인수증'
          , '5톤'
          , '윙바디'
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('화물등록내역'),
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
                      child: ElevatedButton(
                        onPressed: () async{
                          final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000),
                            initialEntryMode: DatePickerEntryMode.calendarOnly,
                            locale: const Locale('ko','KR')
                          );
                          if(selectedDate != null) {
                            ref.read(searchProvider.notifier).setParameter(DateFormat('yyyy-MM-dd').format(selectedDate)
                                , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                                , param?.isCheckedAll ?? true
                                , param?.isCheckSubmit ?? false
                                , param?.isCheckComplete ?? false
                                , param?.isCheckCancel ?? false
                                , param?.status ?? 'st001'
                                , param?.isCheckAllMoney ?? true
                                , param?.isCheckCard ?? false
                                , param?.isCheckPaper ?? false
                                , param?.isCheckPrepaid ?? false
                                , param?.paymentMethod ?? 'pa001'
                                , param?.searchText ?? ''
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                              side: const BorderSide(
                                color: Colors.black
                              )
                            )
                          )
                        ),
                        child: Text(
                          param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now()),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "NotoSansKR",
                            fontSize: 14.sp
                          ),
                        ),

                      )
                    ),
                    InkWell(
                      onTap: () async{
                        final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000),
                            initialEntryMode: DatePickerEntryMode.calendarOnly,
                            locale: const Locale('ko','KR')
                        );
                        if(selectedDate != null) {
                          ref.read(searchProvider.notifier).setParameter(DateFormat('yyyy-MM-dd').format(selectedDate)
                              , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                              , param?.isCheckedAll ?? true
                              , param?.isCheckSubmit ?? false
                              , param?.isCheckComplete ?? false
                              , param?.isCheckCancel ?? false
                              , param?.status ?? 'st001'
                              , param?.isCheckAllMoney ?? true
                              , param?.isCheckCard ?? false
                              , param?.isCheckPaper ?? false
                              , param?.isCheckPrepaid ?? false
                              , param?.paymentMethod ?? 'pa001'
                              , param?.searchText ?? ''
                          );
                        }
                      },
                      child: const Icon(
                        Icons.calendar_month
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10.w, 5.h, 5.h, 5.w),
                        width: 120.w,
                        height: 30.h,
                        child: ElevatedButton(
                          onPressed: () async{
                            final selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(3000),
                                initialEntryMode: DatePickerEntryMode.calendarOnly,
                                locale: const Locale('ko','KR')
                            );
                            if(selectedDate != null) {
                              ref.read(searchProvider.notifier).setParameter(
                                  param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                                  , DateFormat('yyyy-MM-dd').format(selectedDate)
                                  , param?.isCheckedAll ?? true
                                  , param?.isCheckSubmit ?? false
                                  , param?.isCheckComplete ?? false
                                  , param?.isCheckCancel ?? false
                                  , param?.status ?? 'st001'
                                  , param?.isCheckAllMoney ?? true
                                  , param?.isCheckCard ?? false
                                  , param?.isCheckPaper ?? false
                                  , param?.isCheckPrepaid ?? false
                                  , param?.paymentMethod ?? 'pa001'
                                  , param?.searchText ?? ''
                              );
                            }
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                      side: const BorderSide(
                                          color: Colors.black
                                      )
                                  )
                              )
                          ),
                          child: Text(
                            param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now()),
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "NotoSansKR",
                                fontSize: 14.sp
                            ),
                          ),

                        )
                    ),
                    InkWell(
                      onTap: () async{
                        final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000),
                            initialEntryMode: DatePickerEntryMode.calendarOnly,
                            locale: const Locale('ko','KR')
                        );
                        if(selectedDate != null) {
                          ref.read(searchProvider.notifier).setParameter(
                              param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                              , DateFormat('yyyy-MM-dd').format(selectedDate)
                              , param?.isCheckedAll ?? true
                              , param?.isCheckSubmit ?? false
                              , param?.isCheckComplete ?? false
                              , param?.isCheckCancel ?? false
                              , param?.status ?? 'st001'
                              , param?.isCheckAllMoney ?? true
                              , param?.isCheckCard ?? false
                              , param?.isCheckPaper ?? false
                              , param?.isCheckPrepaid ?? false
                              , param?.paymentMethod ?? 'pa001'
                              , param?.searchText ?? ''
                          );
                        }
                      },
                      child: const Icon(
                          Icons.calendar_month
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckedAll ?? true,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , true
                            , false
                            , false
                            , false
                            , param?.status ?? 'st001'
                            , param?.isCheckAllMoney ?? true
                            , param?.isCheckCard ?? false
                            , param?.isCheckPaper ?? false
                            , param?.isCheckPrepaid ?? false
                            , param?.paymentMethod ?? 'pa001'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('전체'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckSubmit ?? false,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , false
                            , true
                            , false
                            , false
                            , param?.status ?? 'st002'
                            , param?.isCheckAllMoney ?? true
                            , param?.isCheckCard ?? false
                            , param?.isCheckPaper ?? false
                            , param?.isCheckPrepaid ?? false
                            , param?.paymentMethod ?? 'pa001'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('접수'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckComplete ?? false,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , false
                            , false
                            , true
                            , false
                            , param?.status ?? 'st003'
                            , param?.isCheckAllMoney ?? true
                            , param?.isCheckCard ?? false
                            , param?.isCheckPaper ?? false
                            , param?.isCheckPrepaid ?? false
                            , param?.paymentMethod ?? 'pa001'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('배차완료'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckCancel ?? false,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , false
                            , false
                            , false
                            , true
                            , param?.status ?? 'st004'
                            , param?.isCheckAllMoney ?? true
                            , param?.isCheckCard ?? false
                            , param?.isCheckPaper ?? false
                            , param?.isCheckPrepaid ?? false
                            , param?.paymentMethod ?? 'pa001'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('화물취소'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckAllMoney ?? true,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.isCheckedAll ?? true
                            , param?.isCheckSubmit ?? false
                            , param?.isCheckComplete ?? false
                            , param?.isCheckCancel ?? false
                            , param?.status ?? 'st001'
                            , true
                            , false
                            , false
                            , false
                            , param?.paymentMethod ?? 'pa001'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('전체'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckCard ?? false,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.isCheckedAll ?? true
                            , param?.isCheckSubmit ?? false
                            , param?.isCheckComplete ?? false
                            , param?.isCheckCancel ?? false
                            , param?.status ?? 'st001'
                            , false
                            , true
                            , false
                            , false
                            , param?.paymentMethod ?? 'pa002'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('카드'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckPaper ?? false,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.isCheckedAll ?? true
                            , param?.isCheckSubmit ?? false
                            , param?.isCheckComplete ?? false
                            , param?.isCheckCancel ?? false
                            , param?.status ?? 'st001'
                            , false
                            , false
                            , true
                            , false
                            , param?.paymentMethod ?? 'pa003'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('인수증'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: param?.isCheckPrepaid ?? false,
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).setParameter(
                            param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , param?.isCheckedAll ?? true
                            , param?.isCheckSubmit ?? false
                            , param?.isCheckComplete ?? false
                            , param?.isCheckCancel ?? false
                            , param?.status ?? 'st001'
                            , false
                            , false
                            , false
                            , true
                            , param?.paymentMethod ?? 'pa004'
                            , param?.searchText ?? ''
                        );
                      },
                    ),
                    const Text('선/착불'),
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
                        onChanged: (value) {
                          ref.read(searchProvider.notifier).setParameter(
                              param?.fromDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                              , param?.toDt ?? DateFormat('yyyy-MM-dd').format(DateTime.now())
                              , param?.isCheckedAll ?? true
                              , param?.isCheckSubmit ?? false
                              , param?.isCheckComplete ?? false
                              , param?.isCheckCancel ?? false
                              , param?.status ?? 'st001'
                              , param?.isCheckAllMoney ?? true
                              , param?.isCheckCard ?? false
                              , param?.isCheckPaper ?? false
                              , param?.isCheckPrepaid ?? false
                              , param?.paymentMethod ?? 'pa001'
                              , value
                          );
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.sp),
                            hintText: '검색어를 입력하세요(화물번호,차주전화번호)',
                            border: const OutlineInputBorder()
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(searchProvider.notifier).setParameter(
                            DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , DateFormat('yyyy-MM-dd').format(DateTime.now())
                            , true
                            , false
                            , false
                            , false
                            , param?.status ?? 'st001'
                            , true
                            , false
                            , false
                            , false
                            , 'pa001'
                            , ''
                        );
                      },
                      child: const Text('지우기')
                    ),
                    Container(
                      width: 5.w,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('검색')
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
              itemCount: list.length,
              itemBuilder:(BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    context.pushNamed('registDetail');
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 5.h, 0, 5.h),
                    width: 365.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.centerLeft,
                              width: 170.w,
                              height: 30.h,
                              child: Text(
                                list[index].fromAddress ?? '',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                              height: 30.h,
                            ),
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
                                list[index].fromDate ?? '',
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
                                  color: list[index].fromStatus == '수' ? Colors.amber : Colors.orange
                              ),
                              child: Text(
                                list[index].fromStatus ?? '',
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
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.centerLeft,
                              width: 170.w,
                              height: 30.h,
                              child: Text(
                                list[index].toAddress ?? '',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                              height: 30.h,
                            ),
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
                                list[index].toDate ?? '',
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
                                  color: list[index].toStatus == '수' ? Colors.amber : Colors.orange
                              ),
                              child: Text(
                                list[index].toStatus ?? '',
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
                              alignment: Alignment.centerRight,
                              width: 80.w,
                              height: 30.h,
                              child: Text(
                                list[index].accessTime ?? '',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: "NanumGothic",
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.centerRight,
                              width: 265.w,
                              height: 30.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index].totalFee ?? '',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: "NanumGothic",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red
                                    ),
                                  ),
                                  Text(
                                    '원',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: "NanumGothic",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.center,
                              width: 80.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.r)
                                  ),
                                  color: list[index].status == '배차완료' ? Colors.blue : Colors.red
                              ),
                              child: Text(
                                list[index].status ?? '',
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
                        Row(
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
                                list[index].mixType ?? '',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    fontWeight: FontWeight.w700,
                                    color: list[index].mixType == '혼적' ? Colors.yellow : Colors.white
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.centerRight,
                              height: 30.h,
                              child: Text(
                                list[index].payMethod ?? '',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              '/',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "NanumGothic",
                                  color: Colors.black
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.centerLeft,
                              height: 30.h,
                              child: Text(
                                list[index].tonType ?? '',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    color: Colors.black
                                ),
                              ),
                            ),
                            Text(
                              '/',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "NanumGothic",
                                  color: Colors.black
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2.sp),
                              alignment: Alignment.centerLeft,
                              height: 30.h,
                              child: Text(
                                list[index].carType ?? '',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: "NanumGothic",
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
