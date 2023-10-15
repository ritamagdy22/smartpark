import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/ParkingPlaces.dart';

class WelcomeScreen extends StatelessWidget {
  static const RouteName = "WelcomeScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // Align children at the start
        children: [
          Image.asset(
            'assets/images/Hello_Screen.png',
            width: 600,
            height: 500,
          ),
          Image.asset('assets/images/smartwelcome.png'),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "The best parking applicantion for you",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 15),
          ),
          SizedBox(height: 60),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed(ParkingPlaces.RouteName);
            
          },

              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            minimumSize: MaterialStateProperty.all(Size(370, 50)),

          ),

              child: Text("Next",
                style: TextStyle(color: Colors.white,
                fontSize: 25
                ),
              ))
        ],
      ),
    );
  }
}

