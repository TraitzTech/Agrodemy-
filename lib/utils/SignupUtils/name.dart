import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';

class Name extends StatelessWidget {
const Name({ super.key });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 40,
      child: TextFormField(
                  decoration:  InputDecoration(
                    constraints: const BoxConstraints(minWidth: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    ),
      
                    prefixIcon: Icon(
                      Icons.person_pin,
                      color: green,
                      ),
      
                    labelText: 'Your name',
                    filled: true,
                    fillColor: white,
                  ),
                  
      
                  keyboardType: TextInputType.name,
                ),
    );
  }
}