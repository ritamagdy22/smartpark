import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/ExtendParking.dart';

import '../UI/LoginScreen.dart';

class BookAndPay extends StatelessWidget {

  static const RouteName ="BookAndPay";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(70)),
                      Image.asset('assets/images/BookAndPay.png'),
                      SizedBox(height: 70,),
                      Image.asset("assets/images/PayText.png"),
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

                  Navigator.of(context).pushNamed(LoginScreen.RouteName);
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
                  Navigator.of(context).pushNamed(ExtendParking.RouteName);



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
      ),
    );

  }
}
