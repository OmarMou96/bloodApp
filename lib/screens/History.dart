import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF0EFEA),
        appBar: AppBar(
          leading: const SizedBox(),
          title: const Text('Your History'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ));
  }
}
