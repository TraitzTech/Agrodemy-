import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class ConfirmPasswordTextform extends StatefulWidget {
  const ConfirmPasswordTextform({ super.key });

  @override
  // ignore: library_private_types_in_public_api
  _ConfirmPasswordTextformState createState() => _ConfirmPasswordTextformState();
}

class _ConfirmPasswordTextformState extends State<ConfirmPasswordTextform> {
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
      
                    labelText: 'Enter password again',
                    
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