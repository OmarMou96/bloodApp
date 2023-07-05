import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BloodCompatibility extends StatefulWidget {
  BloodCompatibility({Key? key}) : super(key: key);

  @override
  State<BloodCompatibility> createState() => _BloodCompatibilityState();
}

class _BloodCompatibilityState extends State<BloodCompatibility> {
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
    return Scaffold(
      backgroundColor: Color(0xFFF0EFEA),
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Blood Information'.tr),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: Center(
        child: ListView(children: [
          data ? Image.asset('images/11.jpg') : Image.asset('images/1.png'),
          data ? Image.asset('images/12.jpg') : Image.asset('images/2.png'),
          data ? Image.asset('images/13.jpg') : Image.asset('images/3.png'),
          data ? Image.asset('images/14.jpg') : Image.asset('images/4.png'),
          data ? Image.asset('images/15.jpg') : Image.asset('images/5.png'),
          data ? Image.asset('images/16.jpg') : Image.asset('images/6.png'),
          data ? Image.asset('images/17.jpg') : Image.asset('images/7.png'),
          data ? Image.asset('images/18.jpg') : Image.asset('images/8.png'),
          data ? Image.asset('images/19.jpg') : Image.asset('images/9.png'),
        ]),
      ),
    );
  }
}
