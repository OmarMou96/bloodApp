import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFEA),
      appBar: AppBar(
        title: Text('About Us'.tr),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: <Widget>[
              Image.asset("images/logo.png", height: 150, width: 150),
              Text(
                'Welcome to our blood donation app!'.tr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                'mission_simple'.tr,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 15),
              Text(
                "our_app".tr,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 15),
              Text(
                "we_also_understand".tr,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 15),
              Text(
                "thanks".tr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "together".tr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  _launchURL('http://bloodbank.pythonanywhere.com/');
                },
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.red[700],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'visit_website'.tr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
