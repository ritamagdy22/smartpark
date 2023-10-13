import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/Register/Register.dart';
import 'package:smartpark/SplashScreen/SplashScreen.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routename,

      routes: {
        SplashScreen.routename:(context)=>SplashScreen(),
        RegisterScreen.RouteName:(context)=>RegisterScreen()


      },

    );
  }
}