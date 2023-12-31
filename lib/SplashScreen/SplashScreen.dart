import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/WelcomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const routename="SplashScreen";

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed(WelcomeScreen.RouteName);

    });

    return Scaffold(
      body: Image.asset('assets/images/SmartPark_Screen.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );

  }
}


/*
      body: Image.asset('assets/images/Splash Screen.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
 */