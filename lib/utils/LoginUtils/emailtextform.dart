import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';

class EmailTextForm extends StatelessWidget {
  const EmailTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
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

                keyboardType: TextInputType.emailAddress,
              );
  }
}