import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:image_picker/image_picker.dart';

class FillYourInformation extends StatelessWidget {

  static const RouteName = "FillYourInformation";

  TextEditingController  namecontroller= TextEditingController();
  TextEditingController  phonecontroller= TextEditingController();
  TextEditingController  emailcontroller= TextEditingController();
  TextEditingController  passwordcontroller= TextEditingController();
  TextEditingController  repasswordcontroller= TextEditingController();

  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: SingleChildScrollView(
         child: Form(
             key:formkey,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
Form
             ],

           )),

         ),
       ),
     )
      ],
    ),
    );



  }


   /*
    void takephoto(){
    final PickedFile picker =  picker.;
}
    */





}
