import 'package:flutter/material.dart';

import 'cubit.dart';
import 'bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlatButton(
                shape: StadiumBorder(),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CubitListPage()));
                },
                child: Text('CUBIT list')),
            SizedBox(
              height: 16,
            ),
            FlatButton(
                shape: StadiumBorder(),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => BlocListPage()));
                },
                child: Text('BLOC list'))
          ],
        ),
      ),
    );
  }
}
