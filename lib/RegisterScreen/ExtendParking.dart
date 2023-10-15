import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtendParking extends StatelessWidget {

  static const RouteName ="ExtendParking";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Center(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(70)),
                    Image.asset('assets/images/ExtendParking.png'),
                    SizedBox(height: 70,),
                    Image.asset("assets/images/TextExtendParkingTime.png"),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 0,
            child: TextButton(
              onPressed: () {
                // Handle the action when the "Skip" button is pressed.
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {


              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(370, 50)),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
