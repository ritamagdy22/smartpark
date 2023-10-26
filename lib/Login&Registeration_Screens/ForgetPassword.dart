import 'package:flutter/material.dart';

class ForgetPAssword extends StatelessWidget {
  static const RouteName = "ForgetPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('assets/images/ForgetPassword.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            // Add horizontal padding
            child: Text(
              "Select which Contact Details we have to use to reset your Password",
              style: TextStyle(
                fontSize: 16, // Adjust the font size if needed
              ),
            ),
          )
        ],
      ),
    );
  }
}
