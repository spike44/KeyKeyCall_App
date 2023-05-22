import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keykeycall_app/main.dart';
class RegistCargoScreen extends ConsumerWidget {
  const RegistCargoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final param = ref.watch(registProvider);
    TextEditingController etcTextController = TextEditingController(
        text: param?.etcText
    );
    TextEditingController shippingFeeController = TextEditingController(
      text: param?.shippingFee
    );
    TextEditingController chargeFeeController = TextEditingController(
        text: param?.chargeFee
    );
    ScrollController scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('화물등록'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
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
                    height: 165.h,
                    padding: EdgeInsets.all(5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            children: [
                              const Text('상차주소 : '),
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
                          child: const Text('카카오 주소검색 연결하여 선택된 주소 표시'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async{
                                await showDialog<void>(
                                  context: context,
                                  builder: (BuildContext dialogContext) {
                                    return SimpleDialog(
                                      contentPadding: const EdgeInsets.all(0),
                                      title: Container(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        child: Text(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "NotoSansKR",
                                                fontSize: 18.sp
                                            ),
                                            '지역'
                                        ),
                                      ),
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '서울'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '서울'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '서울' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '서울',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '인천'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '인천'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '인천' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '인천',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '경기북부'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '경기북부'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '경기북부' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경기북부',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '경기남부'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '경기남부'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '경기남부' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경기남부',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '충북'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '충북' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '충북',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '충남(대전,세종)'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '충남(대전,세종)' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '충남(대전,세종)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '전북'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '전북'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '전북' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '전북',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '전남(광주)'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '전남(광주)'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '전남(광주)' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '전남(광주)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '경북(대구)'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '경북(대구)'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '경북(대구)' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경북(대구)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '경남(부산,울산)'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '경남(부산,울산)'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '경남(부산,울산)' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경남(부산,울산)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '강원'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '강원'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '강원' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '강원',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , '제주'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , '제주'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.fromRegion == '제주' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '제주',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 160.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(),
                                    color: Colors.white
                                ),
                                alignment: Alignment.center,
                                child: Text(param?.fromRegion ?? '지역'),
                              ),
                            ),
                            InkWell(
                              onTap: () async{
                                await showDialog<void>(
                                  context: context,
                                  builder: (BuildContext dialogContext) {
                                    return SimpleDialog(
                                      contentPadding: const EdgeInsets.all(0),
                                      title: Container(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        child: Text(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "NotoSansKR",
                                                fontSize: 18.sp
                                            ),
                                            '상차일시'
                                        ),
                                      ),
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , '당일상'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , param?.toDate ?? '하차일시'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , '당일상'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.fromDate == '당일상' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '당일상',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , '내일상'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , param?.toDate ?? '하차일시'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , '내일상'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.fromDate == '내일상' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '내일상',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , '월상'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , param?.toDate ?? '하차일시'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , '월상'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.fromDate == '월상' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '월상',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , '기타'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , param?.toDate ?? '하차일시'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , '기타'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.fromDate == '기타' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '기타',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 160.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(),
                                    color: Colors.white
                                ),
                                alignment: Alignment.center,
                                child: Text(param?.fromDate ?? '상차일시'),
                              ),
                            ),
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
                    height: 165.h,
                    padding: EdgeInsets.all(5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            children: [
                              const Text('하차주소 : '),
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
                          child: const Text('카카오 주소검색 연결하여 선택된 주소 표시'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async{
                                await showDialog<void>(
                                  context: context,
                                  builder: (BuildContext dialogContext) {
                                    return SimpleDialog(
                                      contentPadding: const EdgeInsets.all(0),
                                      title: Container(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        child: Text(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "NotoSansKR",
                                                fontSize: 18.sp
                                            ),
                                            '지역'
                                        ),
                                      ),
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '서울'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '서울'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '서울'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '서울',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '인천'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '인천'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '인천'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '인천',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '경기북부'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '경기북부'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '경기북부'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경기북부',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '경기남부'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '경기남부'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '경기남부'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경기남부',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '충북'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '충북'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '충북'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '충북',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '충남(대전,세종)'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '충남(대전,세종)'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '충남(대전,세종)'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '충남(대전,세종)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '전북'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '전북'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '전북'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '전북',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '전남(광주)'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '전남(광주)'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '전남'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '전남(광주)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '경북(대구)'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '경북(대구)'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '경북(대구)'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경북(대구)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? ''
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '경남(부산,울산)'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? ''
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '경남(부산,울산)'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '경남(부산,울산)'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '경남(부산,울산)',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? ''
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '강원'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? ''
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '강원'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '강원'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '강원',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? ''
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , '제주'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 100.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? ''
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , '제주'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , param?.carType ?? '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.toRegion == '제주'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 12.sp,
                                                          ),
                                                          '제주',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 160.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(),
                                    color: Colors.white
                                ),
                                alignment: Alignment.center,
                                child: Text(param?.toRegion ?? '지역'),
                              ),
                            ),
                            InkWell(
                              onTap: () async{
                                await showDialog<void>(
                                  context: context,
                                  builder: (BuildContext dialogContext) {
                                    return SimpleDialog(
                                      contentPadding: const EdgeInsets.all(0),
                                      title: Container(
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.center,
                                        child: Text(
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "NotoSansKR",
                                                fontSize: 18.sp
                                            ),
                                            '하차일시'
                                        ),
                                      ),
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , param?.fromDate ?? '상차일시'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , '당착'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , '당착'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.toDate == '당착' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '당착',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , param?.fromDate ?? '상차일시'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , '내착'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , '내착'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.toDate == '내착' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '내착',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , param?.fromDate ?? '상차일시'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , '월착'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , '월착'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.toDate == '월착' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '월착',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , param?.fromDate ?? '상차일시'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , '기타'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , param?.requester ?? '의뢰자 구분'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child:Container(
                                                  width: 300.w,
                                                  height: 40.h,
                                                  padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , '기타'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.toDate == '기타' ? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 20.sp,
                                                      ),
                                                      '기타',
                                                    ),
                                                  ),
                                                ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 160.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(),
                                    color: Colors.white
                                ),
                                alignment: Alignment.center,
                                child: Text(param?.toDate ?? '하차일시'),
                              ),
                            ),
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
                    height: param?.isMix == true ? 100.h : 60.h,
                    padding: EdgeInsets.all(5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 80.w,
                                height: 45.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: param?.isMix ?? false,
                                      onChanged: (value) {
                                        ref.read(registProvider.notifier).setParameter(
                                            param?.fromAddress ?? ''
                                            , param?.fromRegion ?? '지역'
                                            , param?.fromDate ?? '상차일시'
                                            , param?.toAddress ?? ''
                                            , param?.toRegion ?? '지역'
                                            , param?.toDate ?? '하차일시'
                                            , value!
                                            , param?.mixLength ?? ''
                                            , param?.isRoundTrip ?? false
                                            , param?.isEmergency ?? false
                                            , param?.isReservation ?? false
                                            , param?.tonType ?? '톤수'
                                            , param?.carType ?? '차종'
                                            , param?.fromMethod ?? '상차방법'
                                            , param?.toMethod ?? '하차방법'
                                            , param?.carCnt ?? '대수'
                                            , param?.payMethod ?? '결제수단'
                                            , param?.etcText ?? ''
                                            , param?.tonCnt ?? ''
                                            , param?.shippingFee ?? ''
                                            , param?.chargeFee ?? ''
                                            , param?.totalFee ?? ''
                                            , param?.isMove ?? false
                                            , param?.requester ?? '의뢰자 구분'
                                            , param?.businessNo ?? ''
                                            , param?.isOption ?? false
                                            , param?.carMobileNo ?? ''
                                            , param?.reqMobileNo ?? ''
                                        );
                                      },
                                    ),
                                    InkWell(
                                        onTap: () {
                                          bool value = param?.isMix ?? false;
                                          ref.read(registProvider.notifier).setParameter(
                                              param?.fromAddress ?? ''
                                              , param?.fromRegion ?? '지역'
                                              , param?.fromDate ?? '상차일시'
                                              , param?.toAddress ?? ''
                                              , param?.toRegion ?? '지역'
                                              , param?.toDate ?? '하차일시'
                                              , !value
                                              , param?.mixLength ?? ''
                                              , param?.isRoundTrip ?? false
                                              , param?.isEmergency ?? false
                                              , param?.isReservation ?? false
                                              , param?.tonType ?? '톤수'
                                              , param?.carType ?? '차종'
                                              , param?.fromMethod ?? '상차방법'
                                              , param?.toMethod ?? '하차방법'
                                              , param?.carCnt ?? '대수'
                                              , param?.payMethod ?? '결제수단'
                                              , param?.etcText ?? ''
                                              , param?.tonCnt ?? ''
                                              , param?.shippingFee ?? ''
                                              , param?.chargeFee ?? ''
                                              , param?.totalFee ?? ''
                                              , param?.isMove ?? false
                                              , param?.requester ?? '의뢰자 구분'
                                              , param?.businessNo ?? ''
                                              , param?.isOption ?? false
                                              , param?.carMobileNo ?? ''
                                              , param?.reqMobileNo ?? ''
                                          );
                                        },
                                        child:const Text('혼적'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80.w,
                                height: 45.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: param?.isRoundTrip ?? false,
                                      onChanged: (value) {
                                        ref.read(registProvider.notifier).setParameter(
                                            param?.fromAddress ?? ''
                                            , param?.fromRegion ?? '지역'
                                            , param?.fromDate ?? '상차일시'
                                            , param?.toAddress ?? ''
                                            , param?.toRegion ?? '지역'
                                            , param?.toDate ?? '하차일시'
                                            , param?.isMix ?? false
                                            , param?.mixLength ?? ''
                                            , value!
                                            , param?.isEmergency ?? false
                                            , param?.isReservation ?? false
                                            , param?.tonType ?? '톤수'
                                            , param?.carType ?? '차종'
                                            , param?.fromMethod ?? '상차방법'
                                            , param?.toMethod ?? '하차방법'
                                            , param?.carCnt ?? '대수'
                                            , param?.payMethod ?? '결제수단'
                                            , param?.etcText ?? ''
                                            , param?.tonCnt ?? ''
                                            , param?.shippingFee ?? ''
                                            , param?.chargeFee ?? ''
                                            , param?.totalFee ?? ''
                                            , param?.isMove ?? false
                                            , param?.requester ?? '의뢰자 구분'
                                            , param?.businessNo ?? ''
                                            , param?.isOption ?? false
                                            , param?.carMobileNo ?? ''
                                            , param?.reqMobileNo ?? ''
                                        );
                                      },
                                    ),
                                    InkWell(
                                        onTap: () {
                                          bool value = param?.isRoundTrip ?? false;
                                          ref.read(registProvider.notifier).setParameter(
                                              param?.fromAddress ?? ''
                                              , param?.fromRegion ?? '지역'
                                              , param?.fromDate ?? '상차일시'
                                              , param?.toAddress ?? ''
                                              , param?.toRegion ?? '지역'
                                              , param?.toDate ?? '하차일시'
                                              , param?.isMix ?? false
                                              , param?.mixLength ?? ''
                                              , !value
                                              , param?.isEmergency ?? false
                                              , param?.isReservation ?? false
                                              , param?.tonType ?? '톤수'
                                              , param?.carType ?? '차종'
                                              , param?.fromMethod ?? '상차방법'
                                              , param?.toMethod ?? '하차방법'
                                              , param?.carCnt ?? '대수'
                                              , param?.payMethod ?? '결제수단'
                                              , param?.etcText ?? ''
                                              , param?.tonCnt ?? ''
                                              , param?.shippingFee ?? ''
                                              , param?.chargeFee ?? ''
                                              , param?.totalFee ?? ''
                                              , param?.isMove ?? false
                                              , param?.requester ?? '의뢰자 구분'
                                              , param?.businessNo ?? ''
                                              , param?.isOption ?? false
                                              , param?.carMobileNo ?? ''
                                              , param?.reqMobileNo ?? ''
                                          );
                                        },
                                        child: const Text('왕복'),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80.w,
                                height: 45.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: param?.isEmergency ?? false,
                                      onChanged: (value) {
                                        ref.read(registProvider.notifier).setParameter(
                                            param?.fromAddress ?? ''
                                            , param?.fromRegion ?? '지역'
                                            , param?.fromDate ?? '상차일시'
                                            , param?.toAddress ?? ''
                                            , param?.toRegion ?? '지역'
                                            , param?.toDate ?? '하차일시'
                                            , param?.isMix ?? false
                                            , param?.mixLength ?? ''
                                            , param?.isRoundTrip ?? false
                                            , value!
                                            , param?.isReservation ?? false
                                            , param?.tonType ?? '톤수'
                                            , param?.carType ?? '차종'
                                            , param?.fromMethod ?? '상차방법'
                                            , param?.toMethod ?? '하차방법'
                                            , param?.carCnt ?? '대수'
                                            , param?.payMethod ?? '결제수단'
                                            , param?.etcText ?? ''
                                            , param?.tonCnt ?? ''
                                            , param?.shippingFee ?? ''
                                            , param?.chargeFee ?? ''
                                            , param?.totalFee ?? ''
                                            , param?.isMove ?? false
                                            , param?.requester ?? '의뢰자 구분'
                                            , param?.businessNo ?? ''
                                            , param?.isOption ?? false
                                            , param?.carMobileNo ?? ''
                                            , param?.reqMobileNo ?? ''
                                        );
                                      },
                                    ),
                                    InkWell(
                                        onTap: () {
                                          bool value = param?.isEmergency ?? false;
                                          ref.read(registProvider.notifier).setParameter(
                                              param?.fromAddress ?? ''
                                              , param?.fromRegion ?? '지역'
                                              , param?.fromDate ?? '상차일시'
                                              , param?.toAddress ?? ''
                                              , param?.toRegion ?? '지역'
                                              , param?.toDate ?? '하차일시'
                                              , param?.isMix ?? false
                                              , param?.mixLength ?? ''
                                              , param?.isRoundTrip ?? false
                                              , !value
                                              , param?.isReservation ?? false
                                              , param?.tonType ?? '톤수'
                                              , param?.carType ?? '차종'
                                              , param?.fromMethod ?? '상차방법'
                                              , param?.toMethod ?? '하차방법'
                                              , param?.carCnt ?? '대수'
                                              , param?.payMethod ?? '결제수단'
                                              , param?.etcText ?? ''
                                              , param?.tonCnt ?? ''
                                              , param?.shippingFee ?? ''
                                              , param?.chargeFee ?? ''
                                              , param?.totalFee ?? ''
                                              , param?.isMove ?? false
                                              , param?.requester ?? '의뢰자 구분'
                                              , param?.businessNo ?? ''
                                              , param?.isOption ?? false
                                              , param?.carMobileNo ?? ''
                                              , param?.reqMobileNo ?? ''
                                          );
                                        },
                                        child: const Text('긴급'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80.w,
                                height: 45.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: param?.isReservation ?? false,
                                      onChanged: (value) {
                                        ref.read(registProvider.notifier).setParameter(
                                            param?.fromAddress ?? ''
                                            , param?.fromRegion ?? '지역'
                                            , param?.fromDate ?? '상차일시'
                                            , param?.toAddress ?? ''
                                            , param?.toRegion ?? '지역'
                                            , param?.toDate ?? '하차일시'
                                            , param?.isMix ?? false
                                            , param?.mixLength ?? ''
                                            , param?.isRoundTrip ?? false
                                            , param?.isEmergency ?? false
                                            , value!
                                            , param?.tonType ?? '톤수'
                                            , param?.carType ?? '차종'
                                            , param?.fromMethod ?? '상차방법'
                                            , param?.toMethod ?? '하차방법'
                                            , param?.carCnt ?? '대수'
                                            , param?.payMethod ?? '결제수단'
                                            , param?.etcText ?? ''
                                            , param?.tonCnt ?? ''
                                            , param?.shippingFee ?? ''
                                            , param?.chargeFee ?? ''
                                            , param?.totalFee ?? ''
                                            , param?.isMove ?? false
                                            , param?.requester ?? '의뢰자 구분'
                                            , param?.businessNo ?? ''
                                            , param?.isOption ?? false
                                            , param?.carMobileNo ?? ''
                                            , param?.reqMobileNo ?? ''
                                        );
                                      },
                                    ),
                                    InkWell(
                                        onTap: () {
                                          bool value = param?.isReservation ?? false;
                                          ref.read(registProvider.notifier).setParameter(
                                              param?.fromAddress ?? ''
                                              , param?.fromRegion ?? '지역'
                                              , param?.fromDate ?? '상차일시'
                                              , param?.toAddress ?? ''
                                              , param?.toRegion ?? '지역'
                                              , param?.toDate ?? '하차일시'
                                              , param?.isMix ?? false
                                              , param?.mixLength ?? ''
                                              , param?.isRoundTrip ?? false
                                              , param?.isEmergency ?? false
                                              , !value
                                              , param?.tonType ?? '톤수'
                                              , param?.carType ?? '차종'
                                              , param?.fromMethod ?? '상차방법'
                                              , param?.toMethod ?? '하차방법'
                                              , param?.carCnt ?? '대수'
                                              , param?.payMethod ?? '결제수단'
                                              , param?.etcText ?? ''
                                              , param?.tonCnt ?? ''
                                              , param?.shippingFee ?? ''
                                              , param?.chargeFee ?? ''
                                              , param?.totalFee ?? ''
                                              , param?.isMove ?? false
                                              , param?.requester ?? '의뢰자 구분'
                                              , param?.businessNo ?? ''
                                              , param?.isOption ?? false
                                              , param?.carMobileNo ?? ''
                                              , param?.reqMobileNo ?? ''
                                          );
                                        },
                                        child: const Text('예약'),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: param?.isMix ?? false,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10.w, 5.h, 5.h, 5.w),
                            width: 210.w,
                            height: 30.h,
                            child: TextField(
                              onChanged: (value) {
                                ref.read(registProvider.notifier).setParameter(
                                    param?.fromAddress ?? ''
                                    , param?.fromRegion ?? '지역'
                                    , param?.fromDate ?? '상차일시'
                                    , param?.toAddress ?? ''
                                    , param?.toRegion ?? '지역'
                                    , param?.toDate ?? '하차일시'
                                    , param?.isMix ?? false
                                    , value
                                    , param?.isRoundTrip ?? false
                                    , param?.isEmergency ?? false
                                    , param?.isReservation ?? false
                                    , param?.tonType ?? '톤수'
                                    , param?.carType ?? '차종'
                                    , param?.fromMethod ?? '상차방법'
                                    , param?.toMethod ?? '하차방법'
                                    , param?.carCnt ?? '대수'
                                    , param?.payMethod ?? '결제수단'
                                    , param?.etcText ?? ''
                                    , param?.tonCnt ?? ''
                                    , param?.shippingFee ?? ''
                                    , param?.chargeFee ?? ''
                                    , param?.totalFee ?? ''
                                    , param?.isMove ?? false
                                    , param?.requester ?? '의뢰자 구분'
                                    , param?.businessNo ?? ''
                                    , param?.isOption ?? false
                                    , param?.carMobileNo ?? ''
                                    , param?.reqMobileNo ?? ''
                                );
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(5.sp),
                                  hintText: '혼적길이',
                                  border: const OutlineInputBorder()
                              ),
                            ),
                          ),

                        ),
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
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () async{
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '톤수'
                                          ),
                                        ),
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , '0.3톤'
                                                          , param?.carType == '라보' || param?.carType == '다마스' ? param?.carType ?? '' : '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , '0.3톤'
                                                              , param?.carType == '라보' || param?.carType == '다마스' ? param?.carType ?? '' : '차종'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.tonType == '0.3톤'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 16.sp,
                                                          ),
                                                          '0.3톤',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '0.5톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? param?.carType ?? '' : '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 99.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '0.5톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? param?.carType ?? '' : '차종'
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '0.5톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '0.5톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '1톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 100.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '1톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '1톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '1톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , '1.4톤'
                                                          , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Container(
                                                      width: 99.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , '1.4톤'
                                                              , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.tonType == '1.4톤'? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 16.sp,
                                                          ),
                                                          '1.4톤',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '2.5톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 99.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '2.5톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '2.5톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '2.5톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '3.5톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 100.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '3.5톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '3.5톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '3.5톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '5톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 99.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '5톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '5톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '5톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '8톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 99.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '8톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '8톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '8톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '11톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 100.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '11톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '11톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '11톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , '14톤'
                                                            , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Container(
                                                        width: 99.w,
                                                        height: 40.h,
                                                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                        alignment: Alignment.centerLeft,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors.black12
                                                            )
                                                        ),
                                                        child: SimpleDialogOption(
                                                          padding: EdgeInsets.zero,
                                                          onPressed: () {
                                                            ref.read(registProvider.notifier).setParameter(
                                                                param?.fromAddress ?? ''
                                                                , param?.fromRegion ?? '지역'
                                                                , param?.fromDate ?? '상차일시'
                                                                , param?.toAddress ?? ''
                                                                , param?.toRegion ?? '지역'
                                                                , param?.toDate ?? '하차일시'
                                                                , param?.isMix ?? false
                                                                , param?.mixLength ?? ''
                                                                , param?.isRoundTrip ?? false
                                                                , param?.isEmergency ?? false
                                                                , param?.isReservation ?? false
                                                                , '14톤'
                                                                , param?.carType == '라보' || param?.carType == '다마스' ? '차종' : param?.carType ?? ''
                                                                , param?.fromMethod ?? '상차방법'
                                                                , param?.toMethod ?? '하차방법'
                                                                , param?.carCnt ?? '대수'
                                                                , param?.payMethod ?? '결제수단'
                                                                , param?.etcText ?? ''
                                                                , param?.tonCnt ?? ''
                                                                , param?.shippingFee ?? ''
                                                                , param?.chargeFee ?? ''
                                                                , param?.totalFee ?? ''
                                                                , param?.isMove ?? false
                                                                , param?.requester ?? '의뢰자 구분'
                                                                , param?.businessNo ?? ''
                                                                , param?.isOption ?? false
                                                                , param?.carMobileNo ?? ''
                                                                , param?.reqMobileNo ?? ''
                                                            );
                                                            Navigator.of(context,rootNavigator: true).pop();
                                                          },
                                                          child: Text(
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: param?.tonType == '14톤'? Colors.redAccent : Colors.black,
                                                              fontFamily: "NotoSansKR",
                                                              fontSize: 16.sp,
                                                            ),
                                                            '14톤',
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.tonType ?? '톤수'),
                                ),
                              ),
                              InkWell(
                                onTap: () async{
                                  param?.tonType != null ?
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '차종'
                                          ),
                                        ),
                                        children: <Widget>[
                                          if(param?.tonType == '0.3톤' || param?.tonType == '0.5톤')
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '다마스'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '다마스'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '다마스' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '다마스',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '라보'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '라보'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '라보' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '라보',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            )
                                          else
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '전체'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '전체'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '전체' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '전체',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '카고'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '카고'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '카고' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '카고',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '윙바디'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '윙바디'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '다마스' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '윙바디',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '탑'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '탑'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '다마스' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '탑',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , '초장축'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , param?.requester ?? '의뢰자 구분'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child:Container(
                                                      width: 300.w,
                                                      height: 40.h,
                                                      padding: EdgeInsets.fromLTRB(120.w, 0, 0, 0),
                                                      alignment: Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.black12
                                                          )
                                                      ),
                                                      child: SimpleDialogOption(
                                                        padding: EdgeInsets.zero,
                                                        onPressed: () {
                                                          ref.read(registProvider.notifier).setParameter(
                                                              param?.fromAddress ?? ''
                                                              , param?.fromRegion ?? '지역'
                                                              , param?.fromDate ?? '상차일시'
                                                              , param?.toAddress ?? ''
                                                              , param?.toRegion ?? '지역'
                                                              , param?.toDate ?? '하차일시'
                                                              , param?.isMix ?? false
                                                              , param?.mixLength ?? ''
                                                              , param?.isRoundTrip ?? false
                                                              , param?.isEmergency ?? false
                                                              , param?.isReservation ?? false
                                                              , param?.tonType ?? '톤수'
                                                              , '초장축'
                                                              , param?.fromMethod ?? '상차방법'
                                                              , param?.toMethod ?? '하차방법'
                                                              , param?.carCnt ?? '대수'
                                                              , param?.payMethod ?? '결제수단'
                                                              , param?.etcText ?? ''
                                                              , param?.tonCnt ?? ''
                                                              , param?.shippingFee ?? ''
                                                              , param?.chargeFee ?? ''
                                                              , param?.totalFee ?? ''
                                                              , param?.isMove ?? false
                                                              , param?.requester ?? '의뢰자 구분'
                                                              , param?.businessNo ?? ''
                                                              , param?.isOption ?? false
                                                              , param?.carMobileNo ?? ''
                                                              , param?.reqMobileNo ?? ''
                                                          );
                                                          Navigator.of(context,rootNavigator: true).pop();
                                                        },
                                                        child: Text(
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: param?.carType == '초장축' ? Colors.redAccent : Colors.black,
                                                            fontFamily: "NotoSansKR",
                                                            fontSize: 20.sp,
                                                          ),
                                                          '초장축',
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            )
                                        ],
                                      );
                                    },
                                  ) : await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return AlertDialog(
                                        backgroundColor: Colors.black54,
                                        content: Text(
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "NotoSansKR",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20.sp
                                            ),
                                            '톤수를 선택 해주세요'
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.carType ?? '차종'),
                                ),
                              ),
                              InkWell(
                                onTap: () async{
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '상차방법'
                                          ),
                                        ),
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , '지게차'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , '지게차'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.fromMethod == '지게차'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '지게차',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , '수작업'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , '수작업'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.fromMethod == '수작업'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '수작업',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , '크레인'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , '크레인'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.fromMethod == '크레인'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '크레인',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , '호이스트'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , '호이스트'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.fromMethod == '호이스트'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '호이스트',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , '컨베이어'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , '컨베이어'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.fromMethod == '컨베이어'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '컨베이어',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.fromMethod ?? '상차방법'),
                                ),
                              ),
                              InkWell(
                                onTap: () async{
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '하차방법'
                                          ),
                                        ),
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , '지게차'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , '지게차'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.toMethod == '지게차'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '지게차',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , '수작업'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , '수작업'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.toMethod == '수작업'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '수작업',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , '크레인'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , '크레인'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.toMethod == '크레인'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '크레인',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , '호이스트'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , '호이스트'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.toMethod == '호이스트'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '호이스트',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , '컨베이어'
                                                        , param?.carCnt ?? '대수'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child:Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , '컨베이어'
                                                            , param?.carCnt ?? '대수'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.toMethod == '컨베이어'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '컨베이어',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.toMethod ?? '하차방법'),
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
                                onTap: () async{
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '대수'
                                          ),
                                        ),
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , '1대'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , '1대'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.carCnt == '1대'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '1대',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , '2대'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , '2대'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.carCnt == '2대'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '2대',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , '3대'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , '3대'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.carCnt == '3대'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '3대',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , '4대'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , '4대'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.carCnt == '4대'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '4대',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , '5대'
                                                        , param?.payMethod ?? '결제수단'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , '5대'
                                                            , param?.payMethod ?? '결제수단'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.carCnt == '5대'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '5대',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.carCnt ?? '대수'),
                                ),
                              ),
                              InkWell(
                                onTap: () async{
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '결제수단'
                                          ),
                                        ),
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , '인수증'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , '인수증'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.payMethod == '인수증'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '인수증',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , '선착불'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , '선착불'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.payMethod == '선착불'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '선착불',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , '카드'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , '카드'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.payMethod == '인수증'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '카드',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    ref.read(registProvider.notifier).setParameter(
                                                        param?.fromAddress ?? ''
                                                        , param?.fromRegion ?? '지역'
                                                        , param?.fromDate ?? '상차일시'
                                                        , param?.toAddress ?? ''
                                                        , param?.toRegion ?? '지역'
                                                        , param?.toDate ?? '하차일시'
                                                        , param?.isMix ?? false
                                                        , param?.mixLength ?? ''
                                                        , param?.isRoundTrip ?? false
                                                        , param?.isEmergency ?? false
                                                        , param?.isReservation ?? false
                                                        , param?.tonType ?? '톤수'
                                                        , param?.carType ?? '차종'
                                                        , param?.fromMethod ?? '상차방법'
                                                        , param?.toMethod ?? '하차방법'
                                                        , param?.carCnt ?? '대수'
                                                        , '수수료확인'
                                                        , param?.etcText ?? ''
                                                        , param?.tonCnt ?? ''
                                                        , param?.shippingFee ?? ''
                                                        , param?.chargeFee ?? ''
                                                        , param?.totalFee ?? ''
                                                        , param?.isMove ?? false
                                                        , param?.requester ?? '의뢰자 구분'
                                                        , param?.businessNo ?? ''
                                                        , param?.isOption ?? false
                                                        , param?.carMobileNo ?? ''
                                                        , param?.reqMobileNo ?? ''
                                                    );
                                                    Navigator.of(context,rootNavigator: true).pop();
                                                  },
                                                  child: Container(
                                                    width: 300.w,
                                                    height: 45.h,
                                                    padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                    alignment: Alignment.centerLeft,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black12
                                                        )
                                                    ),
                                                    child: SimpleDialogOption(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {
                                                        ref.read(registProvider.notifier).setParameter(
                                                            param?.fromAddress ?? ''
                                                            , param?.fromRegion ?? '지역'
                                                            , param?.fromDate ?? '상차일시'
                                                            , param?.toAddress ?? ''
                                                            , param?.toRegion ?? '지역'
                                                            , param?.toDate ?? '하차일시'
                                                            , param?.isMix ?? false
                                                            , param?.mixLength ?? ''
                                                            , param?.isRoundTrip ?? false
                                                            , param?.isEmergency ?? false
                                                            , param?.isReservation ?? false
                                                            , param?.tonType ?? '톤수'
                                                            , param?.carType ?? '차종'
                                                            , param?.fromMethod ?? '상차방법'
                                                            , param?.toMethod ?? '하차방법'
                                                            , param?.carCnt ?? '대수'
                                                            , '수수료확인'
                                                            , param?.etcText ?? ''
                                                            , param?.tonCnt ?? ''
                                                            , param?.shippingFee ?? ''
                                                            , param?.chargeFee ?? ''
                                                            , param?.totalFee ?? ''
                                                            , param?.isMove ?? false
                                                            , param?.requester ?? '의뢰자 구분'
                                                            , param?.businessNo ?? ''
                                                            , param?.isOption ?? false
                                                            , param?.carMobileNo ?? ''
                                                            , param?.reqMobileNo ?? ''
                                                        );
                                                        Navigator.of(context,rootNavigator: true).pop();
                                                      },
                                                      child: Text(
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: param?.payMethod == '수수료확인'? Colors.redAccent : Colors.black,
                                                          fontFamily: "NotoSansKR",
                                                          fontSize: 16.sp,
                                                        ),
                                                        '수수료확인',
                                                      ),
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.payMethod ?? '결제수단'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10.w, 5.h, 5.h, 5.w),
                                width: 80.w,
                                height: 45.h,
                                child: TextField(
                                  onChanged: (value) {
                                    ref.read(registProvider.notifier).setParameter(
                                        param?.fromAddress ?? ''
                                        , param?.fromRegion ?? '지역'
                                        , param?.fromDate ?? '상차일시'
                                        , param?.toAddress ?? ''
                                        , param?.toRegion ?? '지역'
                                        , param?.toDate ?? '하차일시'
                                        , param?.isMix ?? false
                                        , param?.mixLength ?? ''
                                        , param?.isRoundTrip ?? false
                                        , param?.isEmergency ?? false
                                        , param?.isReservation ?? false
                                        , param?.tonType ?? '톤수'
                                        , param?.carType ?? '차종'
                                        , param?.fromMethod ?? '상차방법'
                                        , param?.toMethod ?? '하차방법'
                                        , param?.carCnt ?? '대수'
                                        , param?.payMethod ?? '결제수단'
                                        , param?.etcText ?? ''
                                        , value
                                        , param?.shippingFee ?? ''
                                        , param?.chargeFee ?? ''
                                        , param?.totalFee ?? ''
                                        , param?.isMove ?? false
                                        , param?.requester ?? '의뢰자 구분'
                                        , param?.businessNo ?? ''
                                        , param?.isOption ?? false
                                        , param?.carMobileNo ?? ''
                                        , param?.reqMobileNo ?? ''
                                    );
                                  },
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(5.sp),
                                      hintText: '중량',
                                      border: const OutlineInputBorder()
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5.h, 5.h, 5.w),
                                width: 60.w,
                                height: 45.h,
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                    '톤 이하'
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 375.w,
                          height: 35.h,
                          child: TextField(
                            onChanged: (value) {
                              ref.read(registProvider.notifier).setParameter(
                                  param?.fromAddress ?? ''
                                  , param?.fromRegion ?? '지역'
                                  , param?.fromDate ?? '상차일시'
                                  , param?.toAddress ?? ''
                                  , param?.toRegion ?? '지역'
                                  , param?.toDate ?? '하차일시'
                                  , param?.isMix ?? false
                                  , param?.mixLength ?? ''
                                  , param?.isRoundTrip ?? false
                                  , param?.isEmergency ?? false
                                  , param?.isReservation ?? false
                                  , param?.tonType ?? '톤수'
                                  , param?.carType ?? '차종'
                                  , param?.fromMethod ?? '상차방법'
                                  , param?.toMethod ?? '하차방법'
                                  , param?.carCnt ?? '대수'
                                  , param?.payMethod ?? '결제수단'
                                  , value
                                  , param?.tonCnt ?? ''
                                  , param?.shippingFee ?? ''
                                  , param?.chargeFee ?? ''
                                  , param?.totalFee ?? ''
                                  , param?.isMove ?? false
                                  , param?.requester ?? '의뢰자 구분'
                                  , param?.businessNo ?? ''
                                  , param?.isOption ?? false
                                  , param?.carMobileNo ?? ''
                                  , param?.reqMobileNo ?? ''
                              );
                            },
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            controller: etcTextController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5.sp),
                                hintText: '기타내용을 입력하세요',
                                border: const OutlineInputBorder()
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
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50.w,
                                height: 40.h,
                                alignment: Alignment.centerRight,
                                child : const Text('운송료 : '),
                              ),
                              SizedBox(
                                width: 100.w,
                                height: 40.h,
                                child: TextField(
                                  controller: shippingFeeController,
                                  onChanged: (value) {
                                    var shippingValue = int.parse(value);
                                    var chargeValue = int.parse(param?.chargeFee ?? '0');
                                    var totalValue = shippingValue + chargeValue;
                                    ref.read(registProvider.notifier).setParameter(
                                        param?.fromAddress ?? ''
                                        , param?.fromRegion ?? '지역'
                                        , param?.fromDate ?? '상차일시'
                                        , param?.toAddress ?? ''
                                        , param?.toRegion ?? '지역'
                                        , param?.toDate ?? '하차일시'
                                        , param?.isMix ?? false
                                        , param?.mixLength ?? ''
                                        , param?.isRoundTrip ?? false
                                        , param?.isEmergency ?? false
                                        , param?.isReservation ?? false
                                        , param?.tonType ?? '톤수'
                                        , param?.carType ?? '차종'
                                        , param?.fromMethod ?? '상차방법'
                                        , param?.toMethod ?? '하차방법'
                                        , param?.carCnt ?? '대수'
                                        , param?.payMethod ?? '결제수단'
                                        , param?.etcText ?? ''
                                        , param?.tonCnt ?? ''
                                        , value
                                        , param?.chargeFee ?? ''
                                        , totalValue.toString()
                                        , param?.isMove ?? false
                                        , param?.requester ?? '의뢰자 구분'
                                        , param?.businessNo ?? ''
                                        , param?.isOption ?? false
                                        , param?.carMobileNo ?? ''
                                        , param?.reqMobileNo ?? ''
                                    );
                                  },
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(5.sp),
                                      hintText: '천원단위',
                                      border: const OutlineInputBorder()
                                  ),
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 40.h,
                                alignment: Alignment.centerLeft,
                                child : const Text(',000 원'),
                              ),
                              Container(
                                  width: 70.w,
                                  height: 40.h,
                                  alignment: Alignment.center,
                                  child : ElevatedButton(
                                    onPressed: () {
                                      var value = int.parse(param?.shippingFee ?? '0');
                                      value += 5;
                                      var shippingValue = value;
                                      var chargeValue = int.parse(param?.chargeFee ?? '0');
                                      var totalValue = shippingValue + chargeValue;
                                      ref.read(registProvider.notifier).setParameter(
                                          param?.fromAddress ?? ''
                                          , param?.fromRegion ?? '지역'
                                          , param?.fromDate ?? '상차일시'
                                          , param?.toAddress ?? ''
                                          , param?.toRegion ?? '지역'
                                          , param?.toDate ?? '하차일시'
                                          , param?.isMix ?? false
                                          , param?.mixLength ?? ''
                                          , param?.isRoundTrip ?? false
                                          , param?.isEmergency ?? false
                                          , param?.isReservation ?? false
                                          , param?.tonType ?? '톤수'
                                          , param?.carType ?? '차종'
                                          , param?.fromMethod ?? '상차방법'
                                          , param?.toMethod ?? '하차방법'
                                          , param?.carCnt ?? '대수'
                                          , param?.payMethod ?? '결제수단'
                                          , param?.etcText ?? ''
                                          , param?.tonCnt ?? ''
                                          , value.toString()
                                          , param?.chargeFee ?? ''
                                          , totalValue.toString()
                                          , param?.isMove ?? false
                                          , param?.requester ?? '의뢰자 구분'
                                          , param?.businessNo ?? ''
                                          , param?.isOption ?? false
                                          , param?.carMobileNo ?? ''
                                          , param?.reqMobileNo ?? ''
                                      );
                                    },
                                    child: Text(
                                        style: TextStyle(
                                            fontSize: 12.sp
                                        ),
                                        '+5,000'
                                    ),
                                  )
                              ),
                              Container(
                                  width: 70.w,
                                  height: 40.h,
                                  alignment: Alignment.center,
                                  child : ElevatedButton(
                                    onPressed: () {
                                      var value = int.parse(param?.shippingFee ?? '0');
                                      value -= 5;
                                      if(value < 0) {
                                        value = 0;
                                      }
                                      var shippingValue = value;
                                      var chargeValue = int.parse(param?.chargeFee ?? '0');
                                      var totalValue = shippingValue + chargeValue;
                                      ref.read(registProvider.notifier).setParameter(
                                          param?.fromAddress ?? ''
                                          , param?.fromRegion ?? '지역'
                                          , param?.fromDate ?? '상차일시'
                                          , param?.toAddress ?? ''
                                          , param?.toRegion ?? '지역'
                                          , param?.toDate ?? '하차일시'
                                          , param?.isMix ?? false
                                          , param?.mixLength ?? ''
                                          , param?.isRoundTrip ?? false
                                          , param?.isEmergency ?? false
                                          , param?.isReservation ?? false
                                          , param?.tonType ?? '톤수'
                                          , param?.carType ?? '차종'
                                          , param?.fromMethod ?? '상차방법'
                                          , param?.toMethod ?? '하차방법'
                                          , param?.carCnt ?? '대수'
                                          , param?.payMethod ?? '결제수단'
                                          , param?.etcText ?? ''
                                          , param?.tonCnt ?? ''
                                          , value.toString()
                                          , param?.chargeFee ?? '0'
                                          , totalValue.toString()
                                          , param?.isMove ?? false
                                          , param?.requester ?? '의뢰자 구분'
                                          , param?.businessNo ?? ''
                                          , param?.isOption ?? false
                                          , param?.carMobileNo ?? ''
                                          , param?.reqMobileNo ?? ''
                                      );
                                    },
                                    child: Text(
                                        style: TextStyle(
                                            fontSize: 12.sp
                                        ),
                                        '-5,000'
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50.w,
                                height: 40.h,
                                alignment: Alignment.centerRight,
                                child : const Text('수수료 : '),
                              ),
                              SizedBox(
                                width: 100.w,
                                height: 40.h,
                                child: TextField(
                                  controller: chargeFeeController,
                                  onChanged: (value) {
                                    var shippingValue = int.parse(param?.shippingFee ?? '0');
                                    var chargeValue = int.parse(value);
                                    var totalValue = shippingValue + chargeValue;
                                    ref.read(registProvider.notifier).setParameter(
                                        param?.fromAddress ?? ''
                                        , param?.fromRegion ?? '지역'
                                        , param?.fromDate ?? '상차일시'
                                        , param?.toAddress ?? ''
                                        , param?.toRegion ?? '지역'
                                        , param?.toDate ?? '하차일시'
                                        , param?.isMix ?? false
                                        , param?.mixLength ?? ''
                                        , param?.isRoundTrip ?? false
                                        , param?.isEmergency ?? false
                                        , param?.isReservation ?? false
                                        , param?.tonType ?? '톤수'
                                        , param?.carType ?? '차종'
                                        , param?.fromMethod ?? '상차방법'
                                        , param?.toMethod ?? '하차방법'
                                        , param?.carCnt ?? '대수'
                                        , param?.payMethod ?? '결제수단'
                                        , param?.etcText ?? ''
                                        , param?.tonCnt ?? ''
                                        , param?.shippingFee ?? '0'
                                        , value
                                        , totalValue.toString()
                                        , param?.isMove ?? false
                                        , param?.requester ?? '의뢰자 구분'
                                        , param?.businessNo ?? ''
                                        , param?.isOption ?? false
                                        , param?.carMobileNo ?? ''
                                        , param?.reqMobileNo ?? ''
                                    );
                                  },
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(5.sp),
                                      hintText: '천원단위',
                                      border: const OutlineInputBorder()
                                  ),
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 40.h,
                                alignment: Alignment.centerLeft,
                                child : const Text(',000 원'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50.w,
                                height: 40.h,
                                alignment: Alignment.centerRight,
                                child : const Text('총 합계 : '),
                              ),
                              Container(
                                width: 100.w,
                                height: 40.h,
                                alignment: Alignment.centerRight,
                                child: Text(
                                    param?.totalFee ?? '0'
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 40.h,
                                alignment: Alignment.centerLeft,
                                child : const Text(',000 원'),
                              ),
                            ],
                          ),
                        ),
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
                    height: param?.isOption ?? false ? 180.h : 110.h,
                    padding: EdgeInsets.all(5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: param?.isMove ?? false,
                                onChanged: (value) {
                                  ref.read(registProvider.notifier).setParameter(
                                      param?.fromAddress ?? ''
                                      , param?.fromRegion ?? '지역'
                                      , param?.fromDate ?? '상차일시'
                                      , param?.toAddress ?? ''
                                      , param?.toRegion ?? '지역'
                                      , param?.toDate ?? '하차일시'
                                      , param?.isMix ?? false
                                      , param?.mixLength ?? ''
                                      , param?.isRoundTrip ?? false
                                      , param?.isEmergency ?? false
                                      , param?.isReservation ?? false
                                      , param?.tonType ?? '톤수'
                                      , param?.carType ?? '차종'
                                      , param?.fromMethod ?? '상차방법'
                                      , param?.toMethod ?? '하차방법'
                                      , param?.carCnt ?? '대수'
                                      , param?.payMethod ?? '결제수단'
                                      , param?.etcText ?? ''
                                      , param?.tonCnt ?? ''
                                      , param?.shippingFee ?? ''
                                      , param?.chargeFee ?? ''
                                      , param?.totalFee ?? ''
                                      , value!
                                      , param?.requester ?? '의뢰자 구분'
                                      , param?.businessNo ?? ''
                                      , param?.isOption ?? false
                                      , param?.carMobileNo ?? ''
                                      , param?.reqMobileNo ?? ''
                                  );
                                },
                              ),
                              InkWell(
                                  onTap: () {
                                    bool value = param?.isMove ?? false;
                                    ref.read(registProvider.notifier).setParameter(
                                        param?.fromAddress ?? ''
                                        , param?.fromRegion ?? '지역'
                                        , param?.fromDate ?? '상차일시'
                                        , param?.toAddress ?? ''
                                        , param?.toRegion ?? '지역'
                                        , param?.toDate ?? '하차일시'
                                        , param?.isMix ?? false
                                        , param?.mixLength ?? ''
                                        , param?.isRoundTrip ?? false
                                        , param?.isEmergency ?? false
                                        , param?.isReservation ?? false
                                        , param?.tonType ?? '톤수'
                                        , param?.carType ?? '차종'
                                        , param?.fromMethod ?? '상차방법'
                                        , param?.toMethod ?? '하차방법'
                                        , param?.carCnt ?? '대수'
                                        , param?.payMethod ?? '결제수단'
                                        , param?.etcText ?? ''
                                        , param?.tonCnt ?? ''
                                        , param?.shippingFee ?? ''
                                        , param?.chargeFee ?? ''
                                        , param?.totalFee ?? ''
                                        , !value
                                        , param?.requester ?? '의뢰자 구분'
                                        , param?.businessNo ?? ''
                                        , param?.isOption ?? false
                                        , param?.carMobileNo ?? ''
                                        , param?.reqMobileNo ?? ''
                                    );
                                  },
                                  child:const Text('이사 화물이면 체크하세요'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 375.w,
                          height: 45.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () async{
                                  await showDialog<void>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SimpleDialog(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Container(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          child: Text(
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "NotoSansKR",
                                                  fontSize: 18.sp
                                              ),
                                              '의뢰자 구분'
                                          ),
                                        ),
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , param?.fromDate ?? '상차일시'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , param?.toDate ?? '하차일시'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , '비운수사(일반화주)'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child: Container(
                                                  width: 300.w,
                                                  height: 45.h,
                                                  padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , '비운수사(일반화주)'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.requester == '비운수사(일반화주)'? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 16.sp,
                                                      ),
                                                      '비운수사(일반화주)',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  ref.read(registProvider.notifier).setParameter(
                                                      param?.fromAddress ?? ''
                                                      , param?.fromRegion ?? '지역'
                                                      , param?.fromDate ?? '상차일시'
                                                      , param?.toAddress ?? ''
                                                      , param?.toRegion ?? '지역'
                                                      , param?.toDate ?? '하차일시'
                                                      , param?.isMix ?? false
                                                      , param?.mixLength ?? ''
                                                      , param?.isRoundTrip ?? false
                                                      , param?.isEmergency ?? false
                                                      , param?.isReservation ?? false
                                                      , param?.tonType ?? '톤수'
                                                      , param?.carType ?? '차종'
                                                      , param?.fromMethod ?? '상차방법'
                                                      , param?.toMethod ?? '하차방법'
                                                      , param?.carCnt ?? '대수'
                                                      , param?.payMethod ?? '결제수단'
                                                      , param?.etcText ?? ''
                                                      , param?.tonCnt ?? ''
                                                      , param?.shippingFee ?? ''
                                                      , param?.chargeFee ?? ''
                                                      , param?.totalFee ?? ''
                                                      , param?.isMove ?? false
                                                      , '운수사(주선사/운송사)'
                                                      , param?.businessNo ?? ''
                                                      , param?.isOption ?? false
                                                      , param?.carMobileNo ?? ''
                                                      , param?.reqMobileNo ?? ''
                                                  );
                                                  Navigator.of(context,rootNavigator: true).pop();
                                                },
                                                child: Container(
                                                  width: 300.w,
                                                  height: 45.h,
                                                  padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black12
                                                      )
                                                  ),
                                                  child: SimpleDialogOption(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      ref.read(registProvider.notifier).setParameter(
                                                          param?.fromAddress ?? ''
                                                          , param?.fromRegion ?? '지역'
                                                          , param?.fromDate ?? '상차일시'
                                                          , param?.toAddress ?? ''
                                                          , param?.toRegion ?? '지역'
                                                          , param?.toDate ?? '하차일시'
                                                          , param?.isMix ?? false
                                                          , param?.mixLength ?? ''
                                                          , param?.isRoundTrip ?? false
                                                          , param?.isEmergency ?? false
                                                          , param?.isReservation ?? false
                                                          , param?.tonType ?? '톤수'
                                                          , param?.carType ?? '차종'
                                                          , param?.fromMethod ?? '상차방법'
                                                          , param?.toMethod ?? '하차방법'
                                                          , param?.carCnt ?? '대수'
                                                          , param?.payMethod ?? '결제수단'
                                                          , param?.etcText ?? ''
                                                          , param?.tonCnt ?? ''
                                                          , param?.shippingFee ?? ''
                                                          , param?.chargeFee ?? ''
                                                          , param?.totalFee ?? ''
                                                          , param?.isMove ?? false
                                                          , '운수사(주선사/운송사)'
                                                          , param?.businessNo ?? ''
                                                          , param?.isOption ?? false
                                                          , param?.carMobileNo ?? ''
                                                          , param?.reqMobileNo ?? ''
                                                      );
                                                      Navigator.of(context,rootNavigator: true).pop();
                                                    },
                                                    child: Text(
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: param?.requester == '운수사(주선사/운송사)'? Colors.redAccent : Colors.black,
                                                        fontFamily: "NotoSansKR",
                                                        fontSize: 16.sp,
                                                      ),
                                                      '운수사(주선사/운송사)',
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
                                  width: 120.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(),
                                      color: Colors.white
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(param?.requester ?? '의뢰자 구분'),
                                ),
                              ),
                              Container(
                                width: 120.w,
                                height: 45.h,
                                margin: EdgeInsets.fromLTRB(0, 0, 10.w, 0),
                                child: TextField(
                                  onChanged: (value) {
                                    ref.read(registProvider.notifier).setParameter(
                                        param?.fromAddress ?? ''
                                        , param?.fromRegion ?? '지역'
                                        , param?.fromDate ?? '상차일시'
                                        , param?.toAddress ?? ''
                                        , param?.toRegion ?? '지역'
                                        , param?.toDate ?? '하차일시'
                                        , param?.isMix ?? false
                                        , param?.mixLength ?? ''
                                        , param?.isRoundTrip ?? false
                                        , param?.isEmergency ?? false
                                        , param?.isReservation ?? false
                                        , param?.tonType ?? '톤수'
                                        , param?.carType ?? '차종'
                                        , param?.fromMethod ?? '상차방법'
                                        , param?.toMethod ?? '하차방법'
                                        , param?.carCnt ?? '대수'
                                        , param?.payMethod ?? '결제수단'
                                        , param?.etcText ?? ''
                                        , param?.tonCnt ?? ''
                                        , param?.shippingFee ?? '0'
                                        , param?.chargeFee ?? '0'
                                        , param?.totalFee ?? '0'
                                        , param?.isMove ?? false
                                        , param?.requester ?? '의뢰자 구분'
                                        , value
                                        , param?.isOption ?? false
                                        , param?.carMobileNo ?? ''
                                        , param?.reqMobileNo ?? ''
                                    );
                                  },
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(5.sp),
                                      hintText: '사업자번호',
                                      border: const OutlineInputBorder()
                                  ),
                                ),
                              ),
                              Container(
                                  width: 70.w,
                                  height: 45.h,
                                  alignment: Alignment.centerLeft,
                                  child : ElevatedButton(
                                    onPressed: () {
                                      bool value = param?.isOption ?? false;
                                      ref.read(registProvider.notifier).setParameter(
                                          param?.fromAddress ?? ''
                                          , param?.fromRegion ?? '지역'
                                          , param?.fromDate ?? '상차일시'
                                          , param?.toAddress ?? ''
                                          , param?.toRegion ?? '지역'
                                          , param?.toDate ?? '하차일시'
                                          , param?.isMix ?? false
                                          , param?.mixLength ?? ''
                                          , param?.isRoundTrip ?? false
                                          , param?.isEmergency ?? false
                                          , param?.isReservation ?? false
                                          , param?.tonType ?? '톤수'
                                          , param?.carType ?? '차종'
                                          , param?.fromMethod ?? '상차방법'
                                          , param?.toMethod ?? '하차방법'
                                          , param?.carCnt ?? '대수'
                                          , param?.payMethod ?? '결제수단'
                                          , param?.etcText ?? ''
                                          , param?.tonCnt ?? ''
                                          , param?.shippingFee ?? '0'
                                          , param?.chargeFee ?? '0'
                                          , param?.totalFee ?? '0'
                                          , param?.isMove ?? false
                                          , param?.requester ?? '의뢰자 구분'
                                          , param?.businessNo ?? ''
                                          , !value
                                          , param?.carMobileNo ?? ''
                                          , param?.reqMobileNo ?? ''
                                      );
                                    },
                                    style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          Size(70.w, 45.h)
                                      ),
                                    ),
                                    child: Text(
                                        style: TextStyle(
                                            fontSize: 10.sp
                                        ),
                                        '선택항목'
                                    ),
                                  )
                              ),
                            ],

                          ),
                        ),
                        Visibility(
                            visible: param?.isOption ?? false,
                            child: Container(
                              margin: EdgeInsets.all(10.sp),
                              width: 375.w,
                              height: 45.h,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 150.w,
                                    height: 45.h,
                                    margin: EdgeInsets.fromLTRB(0, 0, 10.w, 0),
                                    child: TextField(
                                      onChanged: (value) {
                                        ref.read(registProvider.notifier).setParameter(
                                            param?.fromAddress ?? ''
                                            , param?.fromRegion ?? '지역'
                                            , param?.fromDate ?? '상차일시'
                                            , param?.toAddress ?? ''
                                            , param?.toRegion ?? '지역'
                                            , param?.toDate ?? '하차일시'
                                            , param?.isMix ?? false
                                            , param?.mixLength ?? ''
                                            , param?.isRoundTrip ?? false
                                            , param?.isEmergency ?? false
                                            , param?.isReservation ?? false
                                            , param?.tonType ?? '톤수'
                                            , param?.carType ?? '차종'
                                            , param?.fromMethod ?? '상차방법'
                                            , param?.toMethod ?? '하차방법'
                                            , param?.carCnt ?? '대수'
                                            , param?.payMethod ?? '결제수단'
                                            , param?.etcText ?? ''
                                            , param?.tonCnt ?? ''
                                            , param?.shippingFee ?? '0'
                                            , param?.chargeFee ?? '0'
                                            , param?.totalFee ?? '0'
                                            , param?.isMove ?? false
                                            , param?.requester ?? '의뢰자 구분'
                                            , param?.businessNo ?? ''
                                            , param?.isOption ?? false
                                            , value
                                            , param?.reqMobileNo ?? ''
                                        );
                                      },
                                      textAlign: TextAlign.right,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(5.sp),
                                          hintText: '하차자 연락처',
                                          border: const OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150.w,
                                    height: 45.h,
                                    margin: EdgeInsets.fromLTRB(0, 0, 10.w, 0),
                                    child: TextField(
                                      onChanged: (value) {
                                        ref.read(registProvider.notifier).setParameter(
                                            param?.fromAddress ?? ''
                                            , param?.fromRegion ?? '지역'
                                            , param?.fromDate ?? '상차일시'
                                            , param?.toAddress ?? ''
                                            , param?.toRegion ?? '지역'
                                            , param?.toDate ?? '하차일시'
                                            , param?.isMix ?? false
                                            , param?.mixLength ?? ''
                                            , param?.isRoundTrip ?? false
                                            , param?.isEmergency ?? false
                                            , param?.isReservation ?? false
                                            , param?.tonType ?? '톤수'
                                            , param?.carType ?? '차종'
                                            , param?.fromMethod ?? '상차방법'
                                            , param?.toMethod ?? '하차방법'
                                            , param?.carCnt ?? '대수'
                                            , param?.payMethod ?? '결제수단'
                                            , param?.etcText ?? ''
                                            , param?.tonCnt ?? ''
                                            , param?.shippingFee ?? '0'
                                            , param?.chargeFee ?? '0'
                                            , param?.totalFee ?? '0'
                                            , param?.isMove ?? false
                                            , param?.requester ?? '의뢰자 구분'
                                            , param?.businessNo ?? ''
                                            , param?.isOption ?? false
                                            , param?.carMobileNo ?? ''
                                            , value
                                        );
                                      },
                                      textAlign: TextAlign.right,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(5.sp),
                                          hintText: '의뢰자 연락처',
                                          border: const OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100.h,
                  ),
                ],
              ),
            )
          ),
          Container(
            margin: EdgeInsets.all(10.sp),
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            width: 375.w,
            height: 50.h,
            padding: EdgeInsets.all(5.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 150.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    child : ElevatedButton(
                      onPressed: () {

                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(150.w, 40.h)
                        ),
                      ),
                      child: Text(
                          style: TextStyle(
                              fontSize: 12.sp
                          ),
                          '등록'
                      ),
                    )
                ),
                Container(
                    width: 150.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    child : ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(150.w, 40.h)
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.redAccent
                          )
                      ),
                      onPressed: () {

                      },
                      child: Text(
                          style: TextStyle(
                              fontSize: 12.sp
                          ),
                          '취소'
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      )
      ,
    );
  }
}
