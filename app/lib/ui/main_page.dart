import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/navbar/navbar_bloc.dart';
import '../services/curved_navbar.dart';
import '../widget/navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: bottomNavScreen.elementAt(state.tabIndex),
          ),
          bottomNavigationBar: const CurvedNavBar(
            height: 50,
            color: Colors.amber,
            backgroundColor: Colors.blueAccent,
          ),
        );
      },
    );
  }
}
