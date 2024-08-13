import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class EmailTextForm extends StatelessWidget {
  const EmailTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: TextFormField(
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    ),
      
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: green,
                      ),
      
                    labelText: 'yourmail@gmail.com',
                    filled: true,
                    fillColor: white,
                  ),
                  showCursor: true,
                  cursorColor: black,
                  cursorHeight: 20,
                  cursorErrorColor: red,
                  keyboardType: TextInputType.emailAddress,
                ),
    );
  }
}