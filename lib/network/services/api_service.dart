import 'dart:developer';

import 'package:blood/network/models/user_model.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

class ApiService {
  //login
  //register
  //get hospitals 
  Future<List<UserModel>?> getUsers() async {
    try {
      Uri url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
