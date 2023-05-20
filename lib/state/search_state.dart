import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keykeycall_app/model/search_model.dart';

class SearchStateNotifier extends StateNotifier<SearchModel?>{
  SearchStateNotifier(): super(null);

  setParameter(String fromDt, String toDt, bool isCheckedAll, bool isCheckSubmit, bool isCheckComplete, bool isCheckCancel, String status, bool isCheckAllMoney, bool isCheckCard, bool isCheckPaper, bool isCheckPrepaid, String paymentMethod, String searchText) {
    state = SearchModel.setParameter(fromDt, toDt, isCheckedAll, isCheckSubmit, isCheckComplete, isCheckCancel, status, isCheckAllMoney, isCheckCard, isCheckPaper, isCheckPrepaid, paymentMethod, searchText);
  }
  removeParameter() {
    state = null;
  }
}