import 'package:blood/bindings.dart';
import 'package:blood/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'translations.dart';

void main() {
  MyBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool data = false;

  getFromShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    data = prefs.getBool("isArabic") ?? false;
    data
        ? Get.updateLocale(const Locale('ar', 'DZ'))
        : Get.updateLocale(const Locale('en', 'US'));
    // setState(() {});
    print('get from shared successfully!');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFromShared();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      initialBinding: MyBindings(),
      translations: AppTranslations(),
      locale: data ? Locale('ar', 'DZ') : Locale('en', 'US'),
    );
  }
}
