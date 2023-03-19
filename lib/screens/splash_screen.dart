import 'package:blood/screens/auth_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';


import 'home_screen.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: 250,
      logo: Image.asset('images/logo.png',),
      backgroundImage: const AssetImage('images/BackgroundPic.png',),
      showLoader: false,
      navigator: const AuthScreen(),
      durationInSeconds: 5,
    );
  }
}

