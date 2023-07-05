import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'blood_banks_controller.dart';


class BloodBanksScreen extends StatelessWidget {
  BloodBanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BloodBanksController>(
      builder: (bloodBanksController) => Scaffold(
        backgroundColor: const Color(0xFFF0EFEA),
        appBar: AppBar(
          leading: const BackButton(color: Colors.white),
          title: Text('banks_around'.tr),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
        body: ListView.builder(
          itemCount: bloodBanksController.bloodBanksList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                child: ExpansionTile(
                  textColor: (Colors.red[700]),
                  expandedCrossAxisAlignment: CrossAxisAlignment.center,
                  title: bloodBanksController.data
                      ? Text(
                          "${bloodBanksController.bloodBanksList[index].nameAr}",
                        )
                      : Text(
                          "${bloodBanksController.bloodBanksList[index].name}"),
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        bloodBanksController.launchCaller(
                            "${bloodBanksController.bloodBanksList[index].number}");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.red[700],
                        ),
                        width: 120,
                        child: Center(
                            child: Text(
                          'call_bank'.tr,
                          style: TextStyle(color: Colors.white),
                        )),
                        padding: const EdgeInsets.all(15.0),
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.red[700],
                          ),
                          width: 120,
                          child: Center(
                              child: Text(
                            'open_location'.tr,
                            style: TextStyle(color: Colors.white),
                          )),
                          padding: const EdgeInsets.all(15.0),
                        ),
                      ),
                      onTap: () {
                        bloodBanksController.launchMapsUrl(
                            bloodBanksController
                                .bloodBanksList[index].longitude!,
                            bloodBanksController
                                .bloodBanksList[index].latitude!);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
