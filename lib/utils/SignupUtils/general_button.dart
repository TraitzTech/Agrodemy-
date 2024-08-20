import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Widget nextScreen;
  const GeneralButton({super.key, required this.text, required this.width, required this.height, required this.color, required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => nextScreen)
        );

      },
       style: ElevatedButton.styleFrom(
        minimumSize:  Size(width,height),
        backgroundColor: color,
       ),
       child:Text(
        text,
        style: TextStyle(
          color: white
        ),
       ),
       );
  }
}


