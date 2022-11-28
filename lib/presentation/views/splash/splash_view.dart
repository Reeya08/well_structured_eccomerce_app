import 'dart:async';

import 'package:flutter/material.dart';

import '../login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginView()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40BFFF),
      body: _getSplashView(context),
    );
  }
  Widget _getSplashView(BuildContext context){
    return  Center(
      child: Image.asset(
        'assets/images/splash_icon_white.png',
        height: 72,
        width: 72,
      ),
    );
  }
}
