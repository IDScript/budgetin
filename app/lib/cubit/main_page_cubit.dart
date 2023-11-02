import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initData = 0}) : super(initData);

  int? now;
  int? next;

  int initData;

  void add() => emit(state + 1);

  void remove() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    now = change.currentState;
    next = change.nextState;
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}
