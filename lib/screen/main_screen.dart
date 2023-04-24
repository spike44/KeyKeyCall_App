import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keykeycall_app/main.dart';
import 'package:keykeycall_app/screen/registCargo_screen.dart';

import 'customerCenter_screen.dart';
import 'home_screen.dart';
import 'myPage_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}
class MainScreenState extends ConsumerState<MainScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(bottomNavigationProvider);
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(bottomNavigationProvider);
    return Scaffold(
      body: SafeArea(
        child: [
          HomeScreen(),
          RegistCargoScreen(),
          CustomerCenterScreen(),
          MyPageScreen(),
        ][selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fire_truck),
            label: '화물등록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '고객센터',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '마이페이지',
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          ref.read(bottomNavigationProvider.notifier).state = index;
        },
      ),
    );
  }
}
