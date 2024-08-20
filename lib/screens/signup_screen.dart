import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/screens/forgot_password_screen.dart';
import 'package:Agrodemy/screens/selectpage_screen.dart';
import 'package:Agrodemy/utils/LoginUtils/dividers.dart';
import 'package:Agrodemy/utils/LoginUtils/emailtextform.dart';
import 'package:Agrodemy/utils/LoginUtils/facebook.dart';
import 'package:Agrodemy/utils/LoginUtils/google.dart';
import 'package:Agrodemy/utils/LoginUtils/passwordtextform.dart';
import 'package:Agrodemy/utils/SignupUtils/name.dart';
import 'package:Agrodemy/utils/SignupUtils/general_button.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({ super.key });

  @override
  // ignore: library_private_types_in_public_api
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Container(
           width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                Image.asset(
                  'assets/icons/logo.png',
                  width: 60,
                  height: 60,
                  ),
                const SizedBox(height: 5,),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: white,
                    fontFamily: 'Mairy',
                    fontSize: 50,
                    decoration: TextDecoration.none
                  ),
                ),
                  ]
                ),
                const SizedBox(height: 30,),
                const Name(),
                const SizedBox(height: 25),
                const EmailTextForm(),
                const SizedBox(height: 25),
               const PasswordForm(text: 'Password',),   
               const SizedBox(height: 25),
               const PasswordForm(text: 'Enter password again'),
              TextButton(
                onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ForgotPasswordScreen())
            );
                },
               child: Align(
                alignment: Alignment.centerRight,
                 child: Text(
                  'Forgot Password',
                   style: TextStyle(
                    fontFamily: 'Hind Madurai', 
                    fontWeight: FontWeight.w400,
                    color: green
                   ),
                   ),
               ),
               ),
             const SizedBox(height: 15,),
               GeneralButton(text: 'Next', width:350, height: 40, color: green, nextScreen: const AgeSelectionPage(), ),
               const SizedBox(height: 5,),
               
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Dividers(),
                Text(
                  'or Sign In With',
                  style: TextStyle(
                    color: white,
                    fontFamily: 'Hind Madurai',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Dividers(),
              ],
            ),
            
                  const SizedBox(height: 5,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            Google(),
            SizedBox(width: 3,),
            Facebook(),
            
                    ],
                  ),
            
              ],
            ),
        ),
    );
  }
}