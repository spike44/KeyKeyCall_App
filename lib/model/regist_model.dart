class RegistModel {
  String? fromAddress;
  String? fromRegion;
  String? fromDate;
  String? toAddress;
  String? toRegion;
  String? toDate;
  bool? isMix;
  String? mixLength;
  bool? isRoundTrip;
  bool? isEmergency;
  bool? isReservation;
  String? tonType;
  String? carType;
  String? fromMethod;
  String? toMethod;
  String? carCnt;
  String? payMethod;
  String? etcText;
  String? tonCnt;
  String? shippingFee;
  String? chargeFee;
  String? totalFee;
  bool? isMove;
  String? requester;
  String? businessNo;
  bool? isOption;
  String? carMobileNo;
  String? reqMobileNo;

  RegistModel.setParameter(
      this.fromAddress,
      this.fromRegion,
      this.fromDate,
      this.toAddress,
      this.toRegion,
      this.toDate,
      this.isMix,
      this.mixLength,
      this.isRoundTrip,
      this.isEmergency,
      this.isReservation,
      this.tonType,
      this.carType,
      this.fromMethod,
      this.toMethod,
      this.carCnt,
      this.payMethod,
      this.etcText,
      this.tonCnt,
      this.shippingFee,
      this.chargeFee,
      this.totalFee,
      this.isMove,
      this.requester,
      this.businessNo,
      this.isOption,
      this.carMobileNo,
      this.reqMobileNo);
}