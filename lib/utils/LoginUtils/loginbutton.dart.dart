import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/screens/selectpage_screen.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const AgeSelectionPage())
        );

      },
       style: ElevatedButton.styleFrom(
        minimumSize: const Size(800,40),
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