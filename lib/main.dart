import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/BookAndPay.dart';
import 'package:smartpark/RegisterScreen/ExtendParking.dart';
import 'package:smartpark/RegisterScreen/ParkingPlaces.dart';
import 'package:smartpark/RegisterScreen/WelcomeScreen.dart';
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
       WelcomeScreen.RouteName:(context)=>WelcomeScreen(),
        ParkingPlaces.RouteName:(context)=>ParkingPlaces(),
        BookAndPay.RouteName:(context)=>BookAndPay(),
        ExtendParking.RouteName:(context)=>ExtendParking()

      },

    );
  }
}