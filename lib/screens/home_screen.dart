import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Donate/Donate.dart';
import 'donorAvailable/blood_donation_request_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EFEA),
      appBar: AppBar(
          leading: SizedBox(),
          title: Text('Donation System'.tr),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        "DONATE".tr,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "images/Donate.png",
                      width: 300,
                      height: 250,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DonationScreen()));
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/Receive.png",
                      width: 300,
                      height: 250,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "RECEIVE".tr,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DonorsAvailable()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
