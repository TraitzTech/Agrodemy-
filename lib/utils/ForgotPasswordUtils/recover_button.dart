import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RecoverButton extends StatelessWidget {
const RecoverButton({ super.key });

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const LoginScreen())
        );
       
      },
       style: ElevatedButton.styleFrom(
        minimumSize: const Size(450,40),
        backgroundColor: green,
       ),
       child:Text(
        'Recover',
        style: TextStyle(
          color: white
        ),
       ),
       );
  }
}