import 'package:flutter/material.dart';
import 'package:my_app/const/color.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

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
    return  TextFormField(
                controller: _password,
                obscureText: !_passwordVisible,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),

                  prefixIcon:  Icon(
                    Icons.email_outlined,
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

                  labelText: 'password',
                  
                  filled: true,
                  fillColor: white,
                ),

                keyboardType: TextInputType.visiblePassword,
              );
  }
}