import 'package:flutter/material.dart';

class BloodCompatibility extends StatelessWidget {
  const BloodCompatibility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0EFEA),
        appBar: AppBar(
          leading: SizedBox(),
          title: const Text('Blood Information'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
        body: Center(
          child: ListView(children: [
            Image.asset('images/bloodTypes.png'),
            Image.asset('images/BloodTypeChart.png'),
            Image.asset('images/Donate.png'),
          ]),
        ));
  }
}
