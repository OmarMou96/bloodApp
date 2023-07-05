import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EFEA),
      appBar: AppBar(
          leading: const BackButton(color: Colors.white),
          title: Text('Language'.tr),
          centerTitle: true,
          backgroundColor: Colors.red[700] //,
          ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/arabic.png",
                      width: 140,
                      height: 140,
                    ),
                    const Center(
                      child: Text(
                        "عربي",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Get.updateLocale(const Locale('ar', 'DZ'));
                  saveValue("isArabic", true);
                  Get.back();
                },
              ),
            ),
            Container(
              color: Colors.grey[600],
              width: double.infinity,
              height: 2,
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/english.png",
                      width: 140,
                      height: 140,
                    ),
                    const Center(
                      child: Text(
                        "English",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Get.updateLocale(const Locale('en', 'US'));
                  saveValue("isArabic", false);
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> saveValue(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    print('Value saved successfully!');
  }
}
