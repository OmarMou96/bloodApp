import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DonateController extends GetxController {
  String donateBloodUrl =
      "https://bloodbank.pythonanywhere.com/api/blooddonate/";

  TextEditingController unit = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController disease = TextEditingController();
  String? bloodGroup;

  bool isLoading = false;

  checkEmptyValues() {
    if (unit.text.isEmpty ||
        age.text.isEmpty ||
        disease.text.isEmpty ||
        bloodGroup == null) {
      Get.showSnackbar(
        GetSnackBar(
          title: "failed".tr,
          message: 'fill_data'.tr,
          icon: const Icon(Icons.close),
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.TOP,
        ),
      );
    } else {
      submitData();
    }
  }

  void submitData() async {
    isLoading = true;
    update();
    final response = await http.post(Uri.parse(donateBloodUrl), body: {
      "age": age.text,
      "bloodgroup": bloodGroup,
      "unit": unit.text,
      "disease": disease.text,
    });
    if (response.statusCode == 200) {
      Get.showSnackbar(
        GetSnackBar(
          title: "success".tr,
          message: 'saved'.tr,
          icon: const Icon(Icons.check),
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.TOP,
        ),
      );
      update();
    } else {
      Get.showSnackbar(
        GetSnackBar(
          title: "failed".tr,
          message: 'error'.tr,
          icon: const Icon(Icons.check),
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.TOP,
        ),
      );
      update();
    }
    isLoading = false;
  }
}
