import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/Register/Register.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        RegisterScreen.RouteName:(context)=>RegisterScreen(),

      },
      initialRoute: RegisterScreen.RouteName,

    );
  }
}