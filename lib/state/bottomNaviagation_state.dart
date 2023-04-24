import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationState extends StateNotifier<int> {
  BottomNavigationState() : super(0);

  @override
  set state(int value) {
    super.state = value;
  }
}