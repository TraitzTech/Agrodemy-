import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class EmailTextForm extends StatelessWidget {
  const EmailTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      width: 350,
      child: TextField(
                  decoration:  InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide.none
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