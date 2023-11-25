import 'package:flutter/material.dart';
import 'package:budgetin/splash/splash.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );
      // case '/home':
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<NavBarBloc>.value(
      //       value: NavBarBloc(),
      //       child: const MainPage(),
      //     ),
      //   );
      // case '/sub':
      //   return MaterialPageRoute(
      //     builder: (_) => const SubPage(),
      //   );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
