import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:simple_flutter_bloc/utils/bloc_observer/bloc_observer.dart';

import 'app.dart';

Future<void> main() async {
  // call observer for observe all cubit changes
  Bloc.observer = MyBlocObserver();
  
  runApp(SampleBlocApp());
}
