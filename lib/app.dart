import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_flutter_bloc/business/bloc/home_bloc.dart';
import 'package:simple_flutter_bloc/ui/splash.dart';

import 'business/cubit/home_cubit.dart';

class SampleBlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<HomeCubit>(
            create: (_) => HomeCubit()..loadData(),
          ),
          BlocProvider<HomeBloc>(
            create: (_) => HomeBloc()..add(HomeBlocEventLoad()),
          ),
        ],
        child: MaterialApp(
          title: 'Sample bloc',
          home: SplashPage(),
          debugShowCheckedModeBanner: false,
        ),
      );
}
