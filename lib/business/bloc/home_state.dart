part of 'home_bloc.dart';

abstract class HomeBlocState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeBlocStateInitial extends HomeBlocState {
  @override
  String toString() {
    return 'HomeBlocStateInitial{}';
  }
}

class HomeBlocStateLoading extends HomeBlocState {
  @override
  String toString() {
    return 'HomeBlocStateLoading{}';
  }
}

class HomeBlocStateLoaded extends HomeBlocState {
  final List<UserModel> userList;

  HomeBlocStateLoaded(this.userList);

  @override
  String toString() {
    return 'HomeBlocStateLoaded{userList: $userList}';
  }

  @override
  List<Object> get props => [];
}
