import 'package:flutter/material.dart';

class Google extends StatelessWidget {
const Google({ super.key });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
            onTap: (){
          
            },
            child: Image.asset(
              "assets/icons/google.png",
              width: 50,
              height: 51,
              ),
          );
  }
}