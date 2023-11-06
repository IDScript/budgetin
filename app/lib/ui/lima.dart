import 'package:flutter/material.dart';

class Lima extends StatelessWidget {
  const Lima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).pushNamed('/sub');
        },
      ),
      body: const Center(
        child: Center(
          child: Text('ERROR'),
        ),
      ),
    );
  }
}
