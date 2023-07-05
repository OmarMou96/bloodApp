import 'package:blood/screens/aboutUs.dart';
import 'package:blood/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:blood/screens/change_language_screen.dart';
import 'bloodBanks/blood_banks.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<void> saveValue(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    print('Value saved successfully!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EFEA),
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text('settings'.tr),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25 -
                      MediaQuery.of(context).padding.top,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("images/SettingHeader.png",
                      fit: BoxFit.fitWidth),
                ),
              ],
            ),
          ),
          ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ListTile(
                  title: Text("lang".tr),
                  leading: const Icon(Icons.language),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    Get.to(() => const ChangeLanguageScreen());
                  },
                ),
                ListTile(
                  title: Text("Blood Banks Around You".tr),
                  leading: const Icon(Icons.local_hospital),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    Get.to(() => BloodBanksScreen());
                  },
                ),
                ListTile(
                  //fokakk :D m 2oltlk blaaaaa4 :D
                  title: Text("about".tr),
                  leading: const Icon(Icons.info_outline),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutUsScreen()));
                  },
                ),
                ListTile(
                  // m7taga line seperator? momkn bs hyb2a lono a ?grey
                  title: Text("logout".tr, style: TextStyle(color: Colors.red)),
                  leading: const Icon(Icons.logout, color: Colors.red),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.red),
                  onTap: () {
                    saveValue("loggedIn", false);
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (Route<dynamic> route) => false);
                  },
                ),
              ]),
        ],
      ),
    );
  }
}
