import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keykeycall_app/screen/myPage/carOwnerInfo_screen.dart';
import 'package:keykeycall_app/screen/myPage/cargoInfo_screen.dart';
import 'package:keykeycall_app/screen/myPage/paymentInfo_screen.dart';
class RegistDetailScreen extends ConsumerWidget {
  const RegistDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('화물등록상세'),
            bottom: const TabBar(
              tabs: <Widget> [
                Tab(
                  text: '01 화물정보',
                ),
                Tab(
                  text: '02 차주정보',
                ),
                Tab(
                  text: '03 결제정보',
                ),
              ]
            ),
          ),
          backgroundColor: Colors.white,
          body: const TabBarView(
            children: <Widget>[
              CargoInfoScreen(),
              CarOwnerInfoScreen(),
              PaymentInfoScreen()
            ]
          ),

      )
    );
  }
}
