import 'dart:convert';

AvailableDonorsModel availableDonorsModelFromJson(String str) =>
    AvailableDonorsModel.fromJson(json.decode(str));

String availableDonorsModelToJson(AvailableDonorsModel data) =>
    json.encode(data.toJson());

class AvailableDonorsModel {
  List<Donor> data;
  bool success;

  AvailableDonorsModel({
    required this.data,
    required this.success,
  });

  factory AvailableDonorsModel.fromJson(Map<String, dynamic> json) =>
      AvailableDonorsModel(
        data: List<Donor>.from(json["data"].map((x) => Donor.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success": success,
      };
}

class Donor {
  int id;
  String profilePic;
  String bloodgroup;
  String address;
  String mobile;
  int user;

  Donor({
    required this.id,
    required this.profilePic,
    required this.bloodgroup,
    required this.address,
    required this.mobile,
    required this.user,
  });

  factory Donor.fromJson(Map<String, dynamic> json) => Donor(
        id: json["id"],
        profilePic: json["profile_pic"],
        bloodgroup: json["bloodgroup"],
        address: json["address"],
        mobile: json["mobile"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "profile_pic": profilePic,
        "bloodgroup": bloodgroup,
        "address": address,
        "mobile": mobile,
        "user": user,
      };
}
