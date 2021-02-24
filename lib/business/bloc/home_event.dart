part of 'home_bloc.dart';

abstract class HomeBlocEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeBlocEventLoad extends HomeBlocEvent {
  @override
  String toString() {
    return 'HomeBlocEventLoad{}';
  }
}

class HomeBlocEventRemove extends HomeBlocEvent {
  final UserModel userModel;

  HomeBlocEventRemove({@required this.userModel});

  @override
  String toString() {
    return 'HomeBlocEventRemove{userModel: $userModel}';
  }

  @override
  List<Object> get props => [userModel];
}
