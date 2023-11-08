import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/main_page_cubit.dart';

class MyHomePage extends StatelessWidget {
  final CounterCubit myCounter = CounterCubit();
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Example',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterCubit, int>(
            bloc: myCounter,
            listenWhen: (previous, current) {
              if (previous % 2 == 0) {
                return true;
              }
              return false;
            },
            buildWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              }
              return false;
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(
                    microseconds: 500,
                  ),
                  content: Text(
                    'OK',
                  ),
                ),
              );
            },
            builder: (context, state) {
              return Center(
                child: Text(
                  '$state',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  myCounter.remove();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCounter.add();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
