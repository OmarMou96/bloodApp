import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../reusableWidgets/donor_card.dart';
import 'blood_donation_request_controller.dart';

class DonorsAvailable extends StatefulWidget {
  const DonorsAvailable({Key? key}) : super(key: key);

  @override
  State<DonorsAvailable> createState() => _DonorsAvailableState();
}

class _DonorsAvailableState extends State<DonorsAvailable> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BloodDonationRequestController>(
      builder: (bloodDonationRequestController) {
        return Scaffold(
            backgroundColor: const Color(0xFFF0EFEA),
            appBar: AppBar(
                leading: const BackButton(color: Colors.white),
                title: Text('Request Blood'.tr),
                centerTitle: true,
                backgroundColor: Colors.red[700]),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(13.0),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 25),
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
                              color: Color(0xffe7e6e1),
                              border: Border.all(
                                  color: Colors.grey.shade700, width: 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton<String>(
                                  focusColor: Colors.white,
                                  value:
                                      bloodDonationRequestController.bloodGroup,
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
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(color: Colors.black),
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
                                      bloodDonationRequestController
                                          .bloodGroup = value!;
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
                        decoration: InputDecoration(
                          label: Text("Patients Name".tr),
                          filled: true,
                          enabled: true,
                          border: OutlineInputBorder(),
                        ),
                        controller: bloodDonationRequestController.name,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text("Patients Age".tr),
                          filled: true,
                          enabled: true,
                          border: OutlineInputBorder(),
                        ),
                        controller: bloodDonationRequestController.age,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Reason'.tr),
                          filled: true,
                          enabled: true,
                          border: OutlineInputBorder(),
                        ),
                        controller: bloodDonationRequestController.reason,
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Unit (ml)'.tr),
                          filled: true,
                          enabled: true,
                          border: OutlineInputBorder(),
                        ),
                        controller: bloodDonationRequestController.unit,
                      ),
                      const SizedBox(height: 50),
                      InkWell(
                        onTap: () {
                          bloodDonationRequestController.checkEmptyValues();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.red[700],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: bloodDonationRequestController.isLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  'Submit Your Request'.tr,
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
            ));
      },
    );
  }
}
