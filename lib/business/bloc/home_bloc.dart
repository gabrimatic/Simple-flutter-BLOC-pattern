import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter_bloc/business/models/user.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBloc() : super(HomeBlocStateInitial());

  @override
  Stream<HomeBlocState> mapEventToState(
    HomeBlocEvent event,
  ) async* {
    if (event is HomeBlocEventLoad) {
      yield HomeBlocStateLoading();
      var list = await UserModel.getAllUsers();
      yield HomeBlocStateLoaded(list);
    } // HomeEventLoad
    else if (event is HomeBlocEventRemove) {
      if (state is HomeBlocStateLoaded) {
        (state as HomeBlocStateLoaded)
            .userList
            .removeWhere((e) => e.id == event.userModel.id);
        yield HomeBlocStateLoaded((state as HomeBlocStateLoaded).userList);
      }
    } // HomeEventUpdate
  }
}
