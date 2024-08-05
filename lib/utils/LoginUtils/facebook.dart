import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
const Facebook({ super.key });

  @override
  Widget build(BuildContext context){
    return  GestureDetector(
            onTap: (){
          
            },
            child: Image.asset(
              "assets/icons/facebook.png",
              width: 68,
              height: 68,
              ),
          );
  }
}