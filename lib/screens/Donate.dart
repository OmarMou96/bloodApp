import 'package:flutter/material.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF0EFEA),
        appBar: AppBar(
          leading: BackButton(color: Colors.white),
          title: const Text('Donate'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ));
  }
}
