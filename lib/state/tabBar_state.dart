import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabBarState extends StateNotifier<int> {
  TabBarState() : super(0);

  @override
  set state(int value) {
    super.state = value;
  }
}