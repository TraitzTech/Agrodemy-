import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';

class NextButton extends StatelessWidget {
const NextButton({ super.key });

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        
       
      },
       style: ElevatedButton.styleFrom(
        minimumSize: const Size(800,40),
        backgroundColor: green,
       ),
       child:Text(
        'Next',
        style: TextStyle(
          color: white
        ),
       ),
       );
  }
}