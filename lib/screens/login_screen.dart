import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/screens/forgot_password_screen.dart';
import 'package:Agrodemy/screens/selectpage_screen.dart';
import 'package:Agrodemy/screens/signup_screen.dart';
import 'package:Agrodemy/utils/LoginUtils/dividers.dart';
import 'package:Agrodemy/utils/LoginUtils/emailtextform.dart';
import 'package:Agrodemy/utils/LoginUtils/facebook.dart';
import 'package:Agrodemy/utils/LoginUtils/google.dart';
import 'package:Agrodemy/utils/LoginUtils/passwordtextform.dart';
import 'package:Agrodemy/utils/SignupUtils/general_button.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
         width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png',),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Image.asset(
                'assets/icons/logo.png',
                width: 50,
                height: 50,
                ),
              const SizedBox(height: 20,),
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: white,
                  fontFamily: 'Mairy',
                  fontSize: 50,
                  decoration: TextDecoration.none
                ),
              ),
              ]
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              const EmailTextForm(),
              const SizedBox(height: 25),
             const PasswordForm(text: 'Password',),
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
           const SizedBox(height: 5,),
             GeneralButton(text: 'Login', width:350, height: 40, color: green, nextScreen: const AgeSelectionPage(), ),
             const SizedBox(height: 10,),
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
                
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
          Google(),
          SizedBox(width: 3,),
          Facebook(),
          
                  ],
                ),
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
          Text(
            "Don't Have an account?",
            style: TextStyle(
              color: white,
              fontFamily: "Hind Madurai",
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
            ),
            
            TextButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                    )
                );
              },
               child: Text(
            "Sign Up",
            style: TextStyle(
              color: green,
              fontFamily: "Hind Madurai",
              fontSize: 15,
              fontWeight: FontWeight.w700
            ),
            ),
            )
                  ],
                 )
            ],
          ),
      ),
    );
  }
}
