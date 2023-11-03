part of 'navbar_bloc.dart';

@immutable
sealed class NavBarEvent {}

class TabChange extends NavBarEvent {
  final int tabIndex;
  TabChange({
    required this.tabIndex,
  });
}
