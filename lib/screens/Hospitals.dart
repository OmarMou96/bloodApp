import 'package:flutter/material.dart';

import 'hospital_details_screen.dart';

class HospitalsScreen extends StatelessWidget {
  const HospitalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0EFEA),
        appBar: AppBar(
          leading: SizedBox(),
          title: const Text('Hospitals around you'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
        body: ListView(
          children: [
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Alexandria"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Aswan"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Asyut"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Beheira"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Beni Suef"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Cairo"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Dakahlia"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Damietta"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Faiyum"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Gharbia"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Giza"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Ismailia"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Kafr El Sheikh"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Luxor"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Matruh"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Minya"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Monufia"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("New Valley"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("North Sinai"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Port Said"),
                        onTap: () {}))),Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Qalyubia"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Qena"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Red Sea"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Sharqia"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Sohag"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("South Sinai"),
                        onTap: () {}))),
            Card(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(Icons.local_hospital_outlined, color: Colors.red,),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: const Text("Suez"),
                        onTap: () {}))),
          ],
        ));
  }
}
