import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  String title;
  Function()?onPressed;

  CustomButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 64,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),

        onPressed: onPressed ,
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
