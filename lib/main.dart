import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keykeycall_app/screen/auth_screen.dart';
import 'package:keykeycall_app/screen/home_screen.dart';
import 'package:keykeycall_app/screen/splash_screen.dart';
import 'package:keykeycall_app/utils/logger.dart';

final bottomNavigationProvider = StateProvider((ref) => 0);

final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
          name: 'auth',
          path: '/auth',
          builder: (BuildContext context, GoRouterState state) {
            return const AuthScreen();
          }
      )
    ],
    redirect: (context, state) {
      bool isAuth = true;
      if(isAuth) {
        return '/';
      }
      else {
        return '/auth';
      }
    }
);

void main() {
  runApp(
    const ProviderScope(
      child : MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
  StatelessWidget _splashLoadingWidget(AsyncSnapshot<Object> snapshot) {
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

class KeyKeyCallApp extends StatelessWidget {
  const KeyKeyCallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}