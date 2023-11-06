import '../ui/sub_mene.dart';
import '../ui/main_page.dart';
import 'package:flutter/material.dart';
import '../bloc/navbar/navbar_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<NavBarBloc>.value(
            value: NavBarBloc(),
            child: const MainPage(),
          ),
        );
      case '/sub':
        return MaterialPageRoute(
          builder: (_) => const SubPage(),
        );
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
