import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/BookAndPay.dart';

class ParkingPlaces extends StatelessWidget {
  static const RouteName = 'ParkingPlace';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(70)),
                Image.asset('assets/images/parking2.png'),
                SizedBox(height: 70,),
                Image.asset("assets/images/FindParkingPlaces.png"),
              ],
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
            bottom: 20, // Adjust this value to control the distance from the bottom
            right: 20, // Adjust this value to control the distance from the right
            child: ElevatedButton(
              onPressed: () {

            Navigator.of(context).pushNamed(BookAndPay.RouteName);



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
