import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../tab_bar.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String loginUrl = "https://bloodbank.pythonanywhere.com/login/jwt/";

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> saveValue(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    print('Value saved successfully!');
  }

  login() async {
    final response = await http.post(Uri.parse(loginUrl), body: {
      "username": emailController.text,
      "password": passController.text
    });

    if (response.statusCode == 200) {
      print("request sucess");
      saveValue("loggedIn", true);
      final data = json.decode(response.body) as Map<String, dynamic>;
      print("token ${data["token"]}");
      Get.to(() => const TabBarScreen());
    } else {
      print("request faild");
      throw Exception('Failed to load album');
    }
  }
}
