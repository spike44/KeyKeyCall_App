import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keykeycall_app/model/regist_model.dart';

class RegistStateNotifier extends StateNotifier<RegistModel?> {
  RegistStateNotifier(): super(null);
  
  setParameter(
      String fromAddress,
      String fromRegion,
      String fromDate,
      String toAddress,
      String toRegion,
      String toDate,
      bool isMix,
      String mixLength,
      bool isRoundTrip,
      bool isEmergency,
      bool isReservation,
      String tonType,
      String carType,
      String fromMethod,
      String toMethod,
      String carCnt,
      String payMethod,
      String etcText,
      String tonCnt,
      String shippingFee,
      String chargeFee,
      String totalFee,
      bool isMove,
      String requester,
      String businessNo,
      bool isOption,
      String carMobileNo,
      String reqMobileNo
      ) {
    state = RegistModel.setParameter(fromAddress, fromRegion, fromDate, toAddress, toRegion, toDate, isMix, mixLength, isRoundTrip, isEmergency, isReservation, tonType, carType, fromMethod, toMethod, carCnt, payMethod, etcText, tonCnt, shippingFee, chargeFee, totalFee, isMove, requester, businessNo, isOption, carMobileNo, reqMobileNo);
  }
  
}