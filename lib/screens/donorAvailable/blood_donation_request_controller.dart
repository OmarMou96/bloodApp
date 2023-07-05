import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BloodDonationRequestController extends GetxController {
  String requestBloodUrl =
      "https://bloodbank.pythonanywhere.com/api/bloodrequest/";

  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController unit = TextEditingController();
  TextEditingController reason = TextEditingController();
  String? bloodGroup;
  bool isLoading = false;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }

  checkEmptyValues() {
    if (unit.text.isEmpty ||
        age.text.isEmpty ||
        name.text.isEmpty ||
        reason.text.isEmpty ||
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
      submitRequest();
    }
  }

  void submitRequest() async {
    isLoading = true;
    update();
    final response = await http.post(Uri.parse(requestBloodUrl), body: {
      "patient_name": name.text,
      "patient_age": age.text,
      "reason": reason.text,
      "unit": unit.text,
      "bloodgroup": bloodGroup,
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
      print("request faild");
      throw Exception('Failed to load album');
    }
    isLoading = false;
  }
}
