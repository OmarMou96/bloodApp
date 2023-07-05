import 'dart:async';

import 'package:blood/screens/auth_screen.dart';
import 'package:blood/screens/tab_bar.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool data = false;

  getFromShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    data = prefs.getBool("loggedIn") ?? false;
    print('get from shared successfully!');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getFromShared();
  }

  getPage() {
    data ? TabBarScreen() : AuthScreen();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: 250,
      logo: Image.asset(
        'images/logo.png',
      ),
      backgroundImage: const AssetImage(
        'images/BackgroundPic.png',
      ),
      showLoader: false,
      navigator: AuthScreen(),
      durationInSeconds: 5,
    );
  }
}
