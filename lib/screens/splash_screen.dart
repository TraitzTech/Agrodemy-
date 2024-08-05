

import 'package:flutter/material.dart';
import 'package:my_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black26,
          //     offset: Offset(0, 4),
          //     blurRadius: 250,
          //   ),
          // ],
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/logo.png',
           width: 150,
           height: 150,
           )
        ),
      );
  }
}