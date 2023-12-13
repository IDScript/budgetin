import 'package:flutter/material.dart';
import 'package:budgetin/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authenticated'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(LoggedOut());
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
