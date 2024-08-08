import 'package:flutter/material.dart';
import 'package:my_app/utils/ForgotPasswordUtils/recover_button.dart';
import 'package:my_app/utils/LoginUtils/emailtextform.dart';
import 'package:my_app/const/color.dart';
import 'package:my_app/utils/LoginUtils/passwordtextform.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({
     super.key 
     });

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                'Forgot Password',
                style: TextStyle(
                  color: white,
                  fontFamily: 'Mairy',
                  fontSize: 50,
                  decoration: TextDecoration.none
                ),
              ),

              const SizedBox(height: 50,),
              const EmailTextForm(),
              const SizedBox(height: 20,),
              const PasswordForm(text: 'New Password'),
              const SizedBox(height: 20,),
              const PasswordForm(text: 'Enter Password Agaian'),
              const SizedBox(height: 20,),
              const RecoverButton()
             
              

             
             
          

     
          
            ],
          ),
      ),
    );
  }
}