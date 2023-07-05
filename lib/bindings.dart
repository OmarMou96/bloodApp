import 'package:blood/screens/Donate/Donate_controller.dart';
import 'package:blood/screens/blood_stock/blood_stock_controller.dart';
import 'package:blood/screens/donorAvailable/blood_donation_request_controller.dart';
import 'package:blood/screens/login/login_controller.dart';
import 'package:get/get.dart';

import 'screens/bloodBanks/blood_banks_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<BloodDonationRequestController>(
        () => BloodDonationRequestController(),
        fenix: true);
    Get.lazyPut<BloodStockController>(() => BloodStockController(),
        fenix: true);
    Get.lazyPut<DonateController>(() => DonateController(), fenix: true);
    Get.lazyPut<BloodBanksController>(() => BloodBanksController(),
        fenix: true);
  }
}
