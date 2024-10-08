import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/utils/ForgotPasswordUtils/recover_button.dart';
import 'package:Agrodemy/utils/LoginUtils/emailtextform.dart';
import 'package:Agrodemy/utils/LoginUtils/passwordtextform.dart';
import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 55.0),
      child: Scaffold(
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
                  width: 100,
                  height: 50,
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
      ),
    );
  }
}