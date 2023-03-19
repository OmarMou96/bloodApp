import 'package:flutter/material.dart';

import 'Donate.dart';
import 'bloodDonated.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0EFEA),
        appBar: AppBar(
            leading: SizedBox(),
            title: const Text('Donation System'),
            centerTitle: true,
            backgroundColor: Colors.red[700] //,
            ),
        body: Center(
            child: Column(children: [
          Expanded(
            child: InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/Donate.png",
                    width: 140,
                    height: 140,
                  ),
                  const Center(
                    child: Text(
                      "DONATE",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DonationScreen()));},
            ),
          ),
          Container(
            color: Colors.white,
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
                    "images/Receive.png",
                    width: 140,
                    height: 140,
                  ),
                  const Center(
                    child: Text(
                      "RECEIVE",
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
                        builder: (context) => const BloodDonated()));
              },
            ),
          ),
        ])));
  }
}
