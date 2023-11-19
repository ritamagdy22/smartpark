import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartpark/widget/Form_Label_Widget.dart';
import 'package:smartpark/widget/custom_Text_FormField.dart';

class FillYourInformation extends StatelessWidget {

  static const RouteName = "SignInScreen";


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
         child: Expanded(
           child: SingleChildScrollView(
           child: Form(
               key:formkey,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 SizedBox(height: 60,width: 10,),
                FormLabelWidget(Label: "Name"),
                 SizedBox(height: 10,width: 10,),
                 CustomTextFormField(
                     Type: TextInputType.name,
                     validator: (text){
                        if(text==null || text.trim().isEmpty){
                        return "Please Enter your Name";
                        }
                         else null;
                     },
                     controller: namecontroller,
                     hintText: "Enter Your Name"),
                 SizedBox(height: 30,width: 10,),
                 FormLabelWidget(Label: "Email Address"),
                 SizedBox(height: 10,width: 10,),
                 CustomTextFormField(
                     Type: TextInputType.emailAddress,
                     validator: (text){
                       if(text== null || text.trim().isEmpty){
                         return "Please Enter your Email";
                       }
                       var emailvalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                           .hasMatch(text);
                       if(!emailvalid){
                         return "Email not valid";
                       }
                     },
                     controller: emailcontroller,
                     hintText: "Please Enter Your Email"),
                 SizedBox(height: 20,width: 10,),
                 FormLabelWidget(Label: "Phone Number"),
                 SizedBox(height: 10,width: 10,),
                 CustomTextFormField(
                     Type: TextInputType.phone,
                     validator: (text){
                       if(text==null || text.trim().isEmpty){
                          return "Please Enter your phone Number";
                       }
                       if(text.trim().length<10){
                         return "Phone number must be 10 numbers.";
                       }

                     },
                     controller: phonecontroller,
                     hintText: "Please Enter your Phone number"),
                 SizedBox(height: 20,width: 10,),
                 FormLabelWidget(Label: "Password"),
                 SizedBox(height: 10,width: 10,),
                 CustomTextFormField(
                     Type: TextInputType.visiblePassword,
                     validator: (text){
                       if(text==null || text.trim().isEmpty){
                         return "Please Enter your Password";
                       }
                       if(text.length<6){
                             return " Phone number must be more than 6 charc.";
                       }
                     },
                     controller: passwordcontroller,
                     hintText: "Please Enter your Password"),
                 SizedBox(height: 20,width: 10,),
                 FormLabelWidget(Label: "Confirm Password"),
                 SizedBox(height: 10,width: 10,),
                 CustomTextFormField(
                     Type: TextInputType.visiblePassword,
                     validator: (text){
                       if(text == null || text.trim().isEmpty){
                           return "Please Enter Confirmation Password";
                       }
                       if(repasswordcontroller.text != text){
                            return "Password Dosen't Match";
                       }
                     },
                     controller: repasswordcontroller,
                     hintText: "Confirm Your Password"),

                 


               ],

             )),

           ),
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
