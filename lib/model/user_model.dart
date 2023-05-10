class USerModel {
  final String userId; // id
  final int type; //1 : 주선사, 2: 차주
  final String typeNm; // 타입명
  final String userTelNo; // 전화번호

  USerModel({required this.userId, required this.type, required this.typeNm, required this.userTelNo});
}