import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initData = 0}) : super(0);

	int initData;

	void add(){
		emit(state+1);
		print(state);
	}

	void remove(){
		emit(state-1);
		print(state);
	}

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
	final CounterCubit myCounter = CounterCubit();
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Column(
					mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int	>(
							stream: myCounter.stream,
							initialData: myCounter.initData,
							builder: (context, snapshot) {
								return  Center(
									child: Text(
										'${snapshot.data}'.toString(),
										style: const TextStyle(fontSize: 50),
									),
								);
							}
						),
						const SizedBox(height: 20),
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceEvenly,
							children: [
								IconButton(
									onPressed: (){
										myCounter.remove();
									}, 
									icon: const Icon(Icons.remove)
								),
								IconButton(
									onPressed: (){
										myCounter.add();
									}, 
									icon: const Icon(Icons.add)
								),
							],
						)
          ],
        ));
  }
}
