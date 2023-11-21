import 'package:flutter/material.dart';

class BookNow extends StatelessWidget {

  static const routename= "BookNow";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: EdgeInsets.all(15),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Image.asset("assets/images/BookNow.png",
             width: 300,
             height: 300,
           ),

           SizedBox(height: 30,width: 30,),
           ElevatedButton(
             onPressed: () { },
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.black),
               minimumSize: MaterialStateProperty.all(Size(340, 50)),
             ),
             child: Text('Book Now'),
           ),

         ],
       ),
     ),
   );
  }
}
