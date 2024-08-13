import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/screens/forgot_password_screen.dart';
import 'package:Agrodemy/screens/signup_screen.dart';
import 'package:Agrodemy/utils/LoginUtils/dividers.dart';
import 'package:Agrodemy/utils/LoginUtils/emailtextform.dart';
import 'package:Agrodemy/utils/LoginUtils/facebook.dart';
import 'package:Agrodemy/utils/LoginUtils/google.dart';
import 'package:Agrodemy/utils/LoginUtils/loginbutton.dart.dart';
import 'package:Agrodemy/utils/LoginUtils/passwordtextform.dart';
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
      body: Container(
         width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 25,),
              Image.asset(
                'assets/icons/logo.png',
                width: 136,
                height: 83,
                ),
              const SizedBox(height: 10,),
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: white,
                  fontFamily: 'Mairy',
                  fontSize: 50,
                  decoration: TextDecoration.none
                ),
              ),
              const SizedBox(height: 15,),
              const EmailTextForm(),
              const SizedBox(height: 10),
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
             const LoginButton(),
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
              fontSize: 22,
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
              fontSize: 22,
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
