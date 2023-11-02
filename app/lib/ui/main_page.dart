import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Page',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/home'),
        child: const Icon(Icons.home),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
      ),
    );
  }
}
