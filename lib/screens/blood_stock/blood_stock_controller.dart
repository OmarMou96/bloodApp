import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'blood_stock_model.dart';

class BloodStockController extends GetxController {
  String availableStockUrl = "http://bloodbank.pythonanywhere.com/api/stock/";
  List<Stock> stockList = [];

  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    getListOfBloodStock();
  }

  getListOfBloodStock() async {
    // here you call the api of blood stock
    final response = await http.get(Uri.parse(availableStockUrl));

    if (response.statusCode == 200) {
      print("request sucess");

      final List<dynamic> data = jsonDecode(response.body)['data'];
      stockList = data.map((json) => Stock.fromJson(json)).toList();
      isLoading = false;
      update();
    } else {
      isLoading = false;
      print("request faild");
      throw Exception('Failed to load');
      update();
    }
  }
}
