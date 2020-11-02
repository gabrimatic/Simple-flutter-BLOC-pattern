part of 'home_bloc.dart';

@immutable
abstract class HomeBlocEvent {}

class HomeBlocEventLoad extends HomeBlocEvent {}

class HomeBlocEventRemove extends HomeBlocEvent {
  final UserModel userModel;
  HomeBlocEventRemove(this.userModel);
}
