import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:keykeycall_app/model/search_model.dart';
import '../../main.dart';
class RegistListScreen extends ConsumerWidget {
  const RegistListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final param = ref.watch(searchProvider);
    String initialDt = DateFormat('yyyy-MM-dd').format(DateTime.now());
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
                          const Text('경기 여주 가남읍 본두리'),
                          Container(
                            width: 30.w,
                          ),
                          const Text('당상'),
                          Container(
                            width: 5.w,
                          ),
                          const Text('수')
                        ],
                      ),
                      Row(
                        children: [
                          const Text('서울 마포 망원동'),
                          Container(
                            width: 71.w,
                          ),
                          const Text('당착'),
                          Container(
                            width: 5.w,
                          ),
                          const Text('수')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('40,000원'),
                          Column(
                            children: const [
                              Text('04-21 16:28'),
                              Text('배차완료')
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: const [
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
