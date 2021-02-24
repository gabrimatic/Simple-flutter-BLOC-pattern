import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_flutter_bloc/business/bloc/home_bloc.dart';

class BlocListPage extends StatelessWidget {
  const BlocListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BLOC list'),
          backgroundColor: Colors.blue,
        ),
        body: BlocBuilder<HomeBloc, HomeBlocState>(
          builder: (BuildContext context, state) {
            if (state is HomeBlocStateInitial)
              return Center(
                child: CircularProgressIndicator(),
              );
            else if (state is HomeBlocStateLoading)
              return Center(
                child: CircularProgressIndicator(),
              );

            // state is HomeStateLoaded
            var userList = (state as HomeBlocStateLoaded).userList;
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
                            context
                                .bloc<HomeBloc>()
                                .add(HomeBlocEventRemove(userModel: userModel));
                          }),
                    ),
                  );
                });
          },
        ));
  }
}
