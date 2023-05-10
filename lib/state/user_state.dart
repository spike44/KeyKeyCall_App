import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keykeycall_app/model/user_model.dart';

class UserStateNotifier extends StateNotifier<USerModel?> {
  UserStateNotifier(): super(null);

  login({required String userId, required int type, required String typeNm, required String userTelNo}) {
    state = USerModel(userId: userId, type: type, typeNm: typeNm, userTelNo: userTelNo);
  }
  logout() {
    state = null;
  }
}