import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'blood_stock_controller.dart';

class BloodStockScreen extends StatelessWidget {
  const BloodStockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BloodStockController>(
      builder: (bloodStockController) {
        return Scaffold(
          backgroundColor: const Color(0xFFF0EFEA),
          appBar: AppBar(
            leading: const SizedBox(),
            title: Text('Blood Stock'.tr),
            centerTitle: true,
            backgroundColor: Colors.red[700],
          ),
          body: bloodStockController.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.red,
                ))
              : GridView.builder(
                  itemCount: bloodStockController.stockList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center, //t5r
                            children: [
                              Text(
                                "${bloodStockController.stockList[index].bloodgroup}",
                                style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.red[700],
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  " ${"unit".tr} ${bloodStockController.stockList[index].unit}")
                            ],
                          )),
                    );
                  },
                ),
        );
      },
    );
  }
}
