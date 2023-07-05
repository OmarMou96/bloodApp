import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Donate_controller.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DonateController>(
      builder: (donateController) => Scaffold(
        backgroundColor: const Color(0xFFF0EFEA),
        appBar: AppBar(
          leading: const BackButton(color: Colors.white),
          title: Text('Donate Blood'.tr),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(13.0),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        height: 59.0,
                        width: Get.size.width - 76,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffe7e6e1),
                            border: Border.all(
                                color: Colors.grey.shade700, width: 1)),
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              focusColor: Colors.white,
                              value: donateController.bloodGroup,
                              //elevation: 5,
                              style: const TextStyle(color: Colors.white),
                              iconEnabledColor: Colors.black,
                              items: <String>[
                                'O+',
                                'O-',
                                'A+',
                                'A-',
                                'B+',
                                'B-',
                                'AB+',
                                'AB-',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              hint: Text(
                                "Please choose a blood type".tr,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  donateController.bloodGroup = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: donateController.unit,
                    decoration: InputDecoration(
                      label: Text('Unit (ml)'.tr),
                      filled: true,
                      enabled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: donateController.disease,
                    decoration: InputDecoration(
                      label: Text('Disease (if any)'.tr),
                      filled: true,
                      enabled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: donateController.age,
                    decoration: InputDecoration(
                      label: Text('Age'.tr),
                      filled: true,
                      enabled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      donateController.checkEmptyValues();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.red[700],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: donateController.isLoading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              'Submit Your Donation'.tr,
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
        ),
      ),
    );
  }
}
