import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
const Dividers({ super.key });

  @override
  Widget build(BuildContext context){
    return  Expanded(
      child: Divider(
        indent: 15,
        height: 3,
        thickness: 3,
        endIndent: 15,
        color: green,
      ),
    );
  }
}