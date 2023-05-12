import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keykeycall_app/model/user_model.dart';
import 'package:keykeycall_app/screen/auth_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/centerCall_screen.dart';
import 'package:keykeycall_app/screen/customerCenter_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/notice_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/qna_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/remoteControl_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/restList_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/roadLaw_screen.dart';
import 'package:keykeycall_app/screen/home_screen.dart';
import 'package:keykeycall_app/screen/main_screen.dart';
import 'package:keykeycall_app/screen/myPage/alarm_screen.dart';
import 'package:keykeycall_app/screen/myPage/cardPayment_screen.dart';
import 'package:keykeycall_app/screen/myPage/contractAgreement_screen.dart';
import 'package:keykeycall_app/screen/myPage/electronicTaxRecv_screen.dart';
import 'package:keykeycall_app/screen/myPage/electronicTaxSend_screen.dart';
import 'package:keykeycall_app/screen/myPage/myInfo_screen.dart';
import 'package:keykeycall_app/screen/myPage/virtualAccount_screen.dart';
import 'package:keykeycall_app/screen/myPage_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/orderDetail_screen.dart';
import 'package:keykeycall_app/screen/customerCenter/orderList_screen.dart';
import 'package:keykeycall_app/screen/registCargo_screen.dart';
import 'package:keykeycall_app/screen/myPage/registList_screen.dart';
import 'package:keykeycall_app/screen/splash_screen.dart';
import 'package:keykeycall_app/state/bottomNaviagation_state.dart';
import 'package:keykeycall_app/state/user_state.dart';
import 'package:keykeycall_app/utils/logger.dart';
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final bottomNavigationProvider = StateNotifierProvider<BottomNavigationState, int>((ref) => BottomNavigationState());
final userProvider = StateNotifierProvider<UserStateNotifier, USerModel?>((ref) => UserStateNotifier());
final goRouterProvider = Provider<GoRouter>((ref) {
  final user = ref.watch(userProvider);
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        routes: [
          GoRoute(
            name: 'home',
            path: '/home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            name: 'registCargo',
            path: '/registCargo',
            builder: (BuildContext context, GoRouterState state) {
              return const RegistCargoScreen();
            },
          ),
          GoRoute(
            name: 'customerCenter',
            path: '/customerCenter',
            builder: (BuildContext context, GoRouterState state) {
              return const CustomerCenterScreen();
            },
            routes: [
              GoRoute(
                name: 'centerCall',
                path: 'centerCall',
                builder: (BuildContext context, GoRouterState state) {
                  return const CenterCallScreen();
                },
              ),
              GoRoute(
                name: 'notice',
                path: 'notice',
                builder: (BuildContext context, GoRouterState state) {
                  return const NoticeScreen();
                },
              ),
              GoRoute(
                name: 'orderList',
                path: 'orderList',
                builder: (BuildContext context, GoRouterState state) {
                  return const OrderListScreen();
                },
              ),
              GoRoute(
                name: 'orderDetail',
                path: 'orderDetail',
                builder: (BuildContext context, GoRouterState state) {
                  return const OrderDetailScreen();
                },
              ),
              GoRoute(
                name: 'qna',
                path: 'qna',
                builder: (BuildContext context, GoRouterState state) {
                  return const QnaScreen();
                },
              ),
              GoRoute(
                name: 'remoteControl',
                path: 'remoteControl',
                builder: (BuildContext context, GoRouterState state) {
                  return const RemoteControlScreen();
                },
              ),
              GoRoute(
                name: 'restList',
                path: 'restList',
                builder: (BuildContext context, GoRouterState state) {
                  return const RestListScreen();
                },
              ),
              GoRoute(
                name: 'roadLaw',
                path: 'roadLaw',
                builder: (BuildContext context, GoRouterState state) {
                  return const RoadLawScreen();
                },
              )
            ]
          ),
          GoRoute(
            name: 'myPage',
            path: '/myPage',
            builder: (BuildContext context, GoRouterState state) {
              return const MyPageScreen();
            },
            routes: [
              GoRoute(
                name: 'electronicTaxSend',
                path: 'electronicTaxSend',
                builder: (BuildContext context, GoRouterState state) {
                  return const ElectronicTaxSendScreen();
                },
              ),
              GoRoute(
                name: 'electronicTaxRecv',
                path: 'electronicTaxRecv',
                builder: (BuildContext context, GoRouterState state) {
                  return const ElectronicTaxRecvScreen();
                },
              ),
              GoRoute(
                name: 'virtualAccount',
                path: 'virtualAccount',
                builder: (BuildContext context, GoRouterState state) {
                  return const VirtualAccountScreen();
                },
              ),
              GoRoute(
                name: 'cardPayment',
                path: 'cardPayment',
                builder: (BuildContext context, GoRouterState state) {
                  return const CardPaymentScreen();
                },
              ),
              GoRoute(
                name: 'registList',
                path: 'registList',
                builder: (BuildContext context, GoRouterState state) {
                  return const RegistListScreen();
                },
              ),
              GoRoute(
                name: 'alarm',
                path: 'alarm',
                builder: (BuildContext context, GoRouterState state) {
                  return const AlarmScreen();
                },
              ),
              GoRoute(
                name: 'contractAgreement',
                path: 'contractAgreement',
                builder: (BuildContext context, GoRouterState state) {
                  return const ContractAgreementScreen();
                },
              ),
              GoRoute(
                name: 'myInfo',
                path: 'myInfo',
                builder: (BuildContext context, GoRouterState state) {
                  return const MyInfoScreen();
                },
              ),
            ]
          ),
        ],
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return MainScreen(child: child,);
        },
      ),
      GoRoute(
        name: 'auth',
        path: '/auth',
        builder: (BuildContext context, GoRouterState state) {
          return AuthScreen();
        },
      ),
      GoRoute(
        path: '/',
        name: 'main',
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreen(child: HomeScreen(),);
        },
      ),

    ],
    redirect: (context, state) {
      final isLogin = user != null;
      if(!isLogin)
      {
        return '/auth';
      }
      return null;
    },
  );
});

void main() {
  runApp(
    const ProviderScope(
      child : MyApp()
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: (BuildContext context, Widget? child) {
        return FutureBuilder<Object>(
          future: Future.delayed(
            const Duration(seconds: 3), () => 100
          ),
          builder: (context, snapshot) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 900),
              child: _splashLoadingWidget(snapshot),
            );
          });
      }
    );
  }
  Widget _splashLoadingWidget(AsyncSnapshot<Object> snapshot) {
    if(snapshot.hasError) {
      logger.d('에러가 발생했습니다.');
      return const Text('Error');
    }
    else if(snapshot.hasData) {
      return const KeyKeyCallApp();
    }
    else {
      return const SplashScreen();
    }
  }
}

class KeyKeyCallApp extends ConsumerWidget {
  const KeyKeyCallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}