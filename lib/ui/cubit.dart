import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_flutter_bloc/business/cubit/home_cubit.dart';

class CubitListPage extends StatelessWidget {
  const CubitListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CUBIT page'),
          backgroundColor: Colors.green,
        ),
        body: BlocBuilder<HomeCubit, HomeCubitState>(
          builder: (BuildContext context, state) {
            if (state is HomeCubitStateInitial)
              return Center(
                child: CircularProgressIndicator(),
              );
            else if (state is HomeCubitStateLoading)
              return Center(
                child: CircularProgressIndicator(),
              );

            // state is HomeStateLoaded
            var userList = (state as HomeCubitStateLoaded).userList;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  var userModel = userList[index];

                  return Card(
                    child: ListTile(
                      title: Text(userModel.name),
                      subtitle: Text(userModel.number.toString()),
                      trailing: IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.purple,
                          onPressed: () {
                            context.bloc<HomeCubit>().removeItem(userModel);
                          }),
                    ),
                  );
                });
          },
        ));
  }
}
