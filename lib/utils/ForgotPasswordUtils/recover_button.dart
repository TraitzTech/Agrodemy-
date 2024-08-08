import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';
import 'package:my_app/screens/login_screen.dart';

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
        minimumSize: const Size(500,40),
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