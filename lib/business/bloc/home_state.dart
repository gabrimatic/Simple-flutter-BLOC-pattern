part of 'home_bloc.dart';

@immutable
abstract class HomeBlocState {}

class HomeBlocStateInitial extends HomeBlocState {}

class HomeBlocStateLoading extends HomeBlocState {}

class HomeBlocStateLoaded extends HomeBlocState {
  final List<UserModel> userList;
  HomeBlocStateLoaded(this.userList);
}
