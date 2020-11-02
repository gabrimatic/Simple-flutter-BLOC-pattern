import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_flutter_bloc/ui/home.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 1400), (_) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: FlutterLogo(
              size: MediaQuery.of(context).size.width / 2,
              style: FlutterLogoStyle.markOnly,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '© By H. Yousefpour',
                style: TextStyle(color: Colors.black26),
              ),
            ),
          )
        ],
      ),
    );
  }
}
