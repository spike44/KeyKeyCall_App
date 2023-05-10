import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keykeycall_app/model/user_model.dart';
import 'package:keykeycall_app/screen/auth_screen.dart';
import 'package:keykeycall_app/screen/main_screen.dart';
import 'package:keykeycall_app/screen/registCargo_screen.dart';
import 'package:keykeycall_app/screen/splash_screen.dart';
import 'package:keykeycall_app/state/bottomNaviagation_state.dart';
import 'package:keykeycall_app/state/user_state.dart';
import 'package:keykeycall_app/utils/logger.dart';

final bottomNavigationProvider = StateNotifierProvider<BottomNavigationState, int>((ref) => BottomNavigationState());
final userProvider = StateNotifierProvider<UserStateNotifier, USerModel?>((ref) => UserStateNotifier());
final goRouterProvider = Provider<GoRouter>((ref) {
  final user = ref.watch(userProvider);
 return GoRouter(
   debugLogDiagnostics: true,
   routes: <RouteBase>[
     GoRoute(
       path: '/',
       name: 'main',
       builder: (BuildContext context, GoRouterState state) {
         return const MainScreen();
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
       name: 'registCargo',
       path: '/registCargo',
       builder: (BuildContext context, GoRouterState state) {
         return const RegistCargoScreen();
       },
     )
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