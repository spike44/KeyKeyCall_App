class SearchModel {
  String? fromDt;
  String? toDt;
  String? status;
  String? paymentMethod;
  String? searchText;
  bool? isCheckedAll;
  bool? isCheckSubmit;
  bool? isCheckComplete;
  bool? isCheckCancel;
  bool? isCheckAllMoney;
  bool? isCheckCard;
  bool? isCheckPaper;
  bool? isCheckPrepaid;
  SearchModel.setParameter(this.fromDt, this.toDt, this.isCheckedAll, this.isCheckSubmit, this.isCheckComplete, this.isCheckCancel, this.status, this.isCheckAllMoney, this.isCheckCard, this.isCheckPaper, this.isCheckPrepaid, this.paymentMethod, this.searchText);
}