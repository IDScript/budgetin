import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/navbar/navbar_bloc.dart';
import '../widget/navbar.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});
//   // NavBarBloc _navbarBloc;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Main Page',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => context.go('/home'),
//         child: const Icon(Icons.home),
//       ),
//       body: Center(
//         child: Container(
//           height: 200,
//           width: 200,
//           color: Colors.green,
//         ),
//       ),
//     );
//   }
// }

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final navBarBloc = NavBarBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarBloc, NavBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<NavBarBloc>(context).add(
                TabChange(tabIndex: index),
              );
            },
          ),
        );
      },
    );
  }
}
