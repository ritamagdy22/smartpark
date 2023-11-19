import 'package:flutter/material.dart';
import 'package:smartpark/Login&Registeration_Screens/Fill_Your_Information.dart';
import 'package:smartpark/Login&Registeration_Screens/ForgetPassword.dart';
import 'package:smartpark/Login&Registeration_Screens/SignInScreen.dart';

class LoginScreen extends StatefulWidget {
  static const RouteName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

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
            Navigator.of(context)
                .pop(); // Handle the action when the back arrow is pressed
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // Align children at the top
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 100), // Adjust the top space as needed
            ),
            Image.asset('assets/images/LoginText.png'),
            SizedBox(
              height: 35,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, // Make the label text bold
                  fontSize: 25, // Set the font size for the label
                ),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(
              height: 35,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, // Make the label text bold
                  fontSize: 25, // Set the font size for the label
                ),
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(height: 60),

            ElevatedButton(
              onPressed: () {
                // Perform login logic here using the email and password
                print('Email: $email, Password: $password');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(370, 50)),
              ),
              child: Text('Login'),
            ),

            SizedBox(height: 20,),
            Container(child:
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(ForgetPAssword.RouteName);
              },
                child: Text("Forget Password ?"),),),

            Row(
              children: [
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                    Navigator.of(context).pushNamed(FillYourInformation.RouteName);

                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
