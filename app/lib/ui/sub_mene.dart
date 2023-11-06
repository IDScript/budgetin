import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('From Error'),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.amber,
        ),
      ),
    );
  }
}
