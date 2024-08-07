import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';
import 'package:my_app/utils/LoginUtils/dividers.dart';
import 'package:my_app/utils/LoginUtils/emailtextform.dart';
import 'package:my_app/utils/LoginUtils/facebook.dart';
import 'package:my_app/utils/LoginUtils/google.dart';
import 'package:my_app/utils/LoginUtils/passwordtextform.dart';
import 'package:my_app/utils/SignupUtils/confirm_password_textform.dart';
import 'package:my_app/utils/SignupUtils/name.dart';
import 'package:my_app/utils/SignupUtils/next_button.dart';

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
      body: Container(
           width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/logo.png',
                    width: 150,
                    height: 50,
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
                  const SizedBox(height: 10,),
                  const Name(),
                  const SizedBox(height: 10),
                  const EmailTextForm(),
                  const SizedBox(height: 10),
                 const PasswordForm(),   
                 const SizedBox(height: 10),
                 const ConfirmPasswordTextform(),
                TextButton(
                  onPressed: (){
              
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
               const SizedBox(height: 5,),
                const NextButton(),
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
        ),
    );
  }
}