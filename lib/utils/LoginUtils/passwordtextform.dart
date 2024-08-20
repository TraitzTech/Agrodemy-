import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
   final String text;
  const PasswordForm({
    required this.text,
    super.key});

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  late final TextEditingController _password;
  bool _passwordVisible = false;
  
  @override
  void initState() {
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      width: 350,
      child: TextFormField(
                  controller: _password,
                  obscureText: !_passwordVisible,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    ),
      
                    prefixIcon:  Icon(
                      Icons.lock,
                      color: green,
                      ),
                      suffixIcon: IconButton(
                        color: green,
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(
                            //selects an icon based on password visibility
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
      
                    labelText: widget.text,
                    
                    filled: true,
                    fillColor: white,
                  ),
                  showCursor: true,
                  cursorColor: black,
                  cursorHeight: 20,
                  cursorErrorColor: red,
                  keyboardType: TextInputType.visiblePassword,
                ),
    );
  }
}