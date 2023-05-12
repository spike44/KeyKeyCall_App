import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:keykeycall_app/main.dart';
import 'package:keykeycall_app/screen/registCargo_screen.dart';

import 'customerCenter_screen.dart';
import 'home_screen.dart';
import 'myPage_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;
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
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: '화물등록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center),
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
          if(index == 0) {
            context.goNamed('home');
          }
          else if(index == 1) {
            context.goNamed('registCargo');
          }
          else if(index == 2) {
            context.goNamed('customerCenter');
          }
          else if(index == 3) {
            context.goNamed('myPage');
          }
          ref.read(bottomNavigationProvider.notifier).state = index;
        },
      ),
    );
  }
}
