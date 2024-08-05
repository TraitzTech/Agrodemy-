import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){

      },
       style: ElevatedButton.styleFrom(
        minimumSize: const Size(400,50),
        backgroundColor: green,
       ),
       child:Text(
        'Login',
        style: TextStyle(
          color: white
        ),
       ),
       );
  }
}