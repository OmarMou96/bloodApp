import 'package:blood/screens/UserProfile.dart';
import 'package:blood/screens/login.dart';
import 'package:flutter/material.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EFEA),
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('Settings'),
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
                  width: MediaQuery.of(context).size.width ,
                  child: Image.asset("images/SettingHeader.png", fit: BoxFit.fitWidth),
                ),

                Positioned(
                    left: MediaQuery.of(context).size.width * .5 - 45,
                    top: 120,
                    child: const CircleAvatar(backgroundColor: Colors.white,
                      radius: 55, foregroundImage: AssetImage("images/logo.png"),) //ha?? gooood bs el header ka4 ?kam
                ),

              ],// m7tag fit ? la gamela :D ya
            ),
          ),

          ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8), children: <Widget>[

            ListTile(
              title: const Text("Account"),
              leading: const Icon(Icons.person_outline),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()));},
            ),
            ListTile(
              title: const Text("Language"),
              leading: const Icon(Icons.language),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {},
            ),
            ListTile( //fokakk :D m 2oltlk blaaaaa4 :D
              title: const Text("About Us"),
              leading: const Icon(Icons.info_outline),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {},
            ),
            ListTile( // m7taga line seperator? momkn bs hyb2a lono a ?grey
              title: const Text("Logout", style: TextStyle(color: Colors.red)),
              leading: const Icon(Icons.logout, color: Colors.red),
              trailing:
                  const Icon(Icons.arrow_forward_ios_outlined, color: Colors.red),
              onTap: () {
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

