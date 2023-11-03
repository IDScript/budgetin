import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(const NavBarInitial(tabIndex: 0)) {
    on<NavBarEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(NavBarInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
