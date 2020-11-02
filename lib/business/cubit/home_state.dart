part of 'home_cubit.dart';

@immutable
abstract class HomeCubitState {}

class HomeCubitStateInitial extends HomeCubitState {}

class HomeCubitStateLoading extends HomeCubitState {}

class HomeCubitStateLoaded extends HomeCubitState {
  final List<UserModel> userList;
  HomeCubitStateLoaded(this.userList);
}
