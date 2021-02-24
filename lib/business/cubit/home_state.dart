part of 'home_cubit.dart';

abstract class HomeCubitState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeCubitStateInitial extends HomeCubitState {
  @override
  String toString() {
    return 'HomeCubitStateInitial{}';
  }
}

class HomeCubitStateLoading extends HomeCubitState {
  @override
  String toString() {
    return 'HomeCubitStateLoading{}';
  }
}

class HomeCubitStateLoaded extends HomeCubitState {
  final List<UserModel> userList;

  HomeCubitStateLoaded(this.userList);

  @override
  String toString() {
    return 'HomeCubitStateLoaded{userList: $userList}';
  }

  @override
  List<Object> get props => [userList];
}
