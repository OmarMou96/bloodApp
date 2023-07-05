import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class BloodBanksController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFromShared();
  }

  bool data = false;

  getFromShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    data = prefs.getBool("isArabic") ?? false;
    update();
  }

  List<BloodBank> bloodBanksList = [
    BloodBank(
      longitude: 31.196259830084504,
      latitude: 29.910277450024378,
      name: "Regional Blood Transfusion Center, Alexandria",
      nameAr: "المركز الإقليمي لنقل الدم, الأسكندريه",
      number: "034951963",
    ),
    BloodBank(
        longitude: 24.05729212578946,
        latitude: 32.88222828784465,
        name: "Regional Blood Bank, Aswan",
        nameAr: "بنك الدم الاقليمي, أسوان",
        number: "0972418629"),
    BloodBank(
      longitude: 27.18034373584048,
      latitude: 31.181857730692926,
      name: "Regional Blood Transfusion Center, Assiut",
      nameAr: "المركز الإقليمي لنقل الدم, أسيوط",
      number: "0882370016",
    ),
    BloodBank(
      longitude: 30.83012501694745,
      latitude: 30.530518026991253,
      name: "Regional Blood Transfusion Center, Damanhour",
      nameAr: "المركز الإقليمي لنقل الدم, دمنهور",
      number: "0453337097",
    ),
    BloodBank(
      longitude: 29.042796822485833,
      latitude: 31.117988892574754,
      name: "Regional Blood Bank, Beni suef",
      nameAr: "بنك الدم الاقليمي, بني سويف",
      number: "87",
    ),
    BloodBank(
      longitude: 30.068224595576332,
      latitude: 31.275307396268204,
      name: "The main Blood Bank, Ain Shams, Cairo",
      nameAr: "بنك الدم الرئيسي, عين شمس, القاهرة",
      number: " 0100 832 9541",
    ),
    BloodBank(
      longitude: 30.093012470612823,
      latitude: 31.20802090511115,
      name: "National Blood Transfusion Center, Mansoura",
      nameAr: "المركز القومى لنقل الدم, المنصورة",
      number: "037613117",
    ),
    BloodBank(
        longitude: 30.235582,
        latitude: 32.1051010,
        name: "Regional Blood Bank, Damietta",
        nameAr: "بنك الدم الاقليمي, دمياط",
        number: "057328982"
    ),
    BloodBank(
      longitude: 30.04930921687544,
      latitude: 31.21096432510413,
      name: "National Blood Transfusion Center, Giza",
      nameAr: "المركز القومى لنقل الدم, الجيزة",
      number: "0237613117",
    ),
    BloodBank(
      longitude: 30.79772446987828,
      latitude: 30.987107150538304,
      name: "The main Blood Bank , Tanta",
      nameAr: "بنك الدم الرئيسي, طنطا",
      number: "0403514827",
    ),
    BloodBank(
      longitude: 26.56918062716939,
      latitude: 31.70711376149898,
      name: "Regional Blood Bank, Sohag",
      nameAr: "بنك الدم الاقليمي, سوهاج",
      number: "0932155381",
    ),
    BloodBank(
      longitude: 30.596205936707918,
      latitude: 32.272423738615764,
      name: "Regional Blood Transfusion Center, Ismailia",
      nameAr: "المركز الإقليمي لنقل الدم, الاسماعيلية",
      number: "0643103835",
    ),
    BloodBank(
      longitude: 31.1160342419555,
      latitude: 30.943771046039398,
      name: "Regional Blood Transfusion Center, Kafr El Sheikh",
      nameAr: "المركز الإقليمي لنقل الدم, كفر الشيخ",
      number: "0473220249",
    ),
    BloodBank(
        longitude: 26.158946240518514,
        latitude: 32.706916755304974,
        name: "Regional Blood Transfusion Center, Qena",
        nameAr: "المركز الإقليمي لنقل الدم, قنا",
        number: "0963344842"
    ),
    BloodBank(
      longitude: 31.54376996667142,
      latitude: 27.365523696495913,
      name: "Regional Blood Transfusion Center, Matrouh",
      nameAr: "المركز الإقليمي لنقل الدم, مطروح",
      number: "01021047747",
    ),
    BloodBank(
      longitude: 28.091444845178124,
      latitude: 30.764562971069225,
      name: "Regional Blood Transfusion Center, Minya",
      nameAr: "المركز الإقليمي لنقل الدم, المنيا",
      number: "0862339241",
    ),
    BloodBank(
      longitude: 30.575384553065025,
      latitude: 31.011025124386006,
      name: "Regional Blood Transfusion Center, Menofia",
      nameAr: "المركز الإقليمي لنقل الدم, المنوفيه",
      number: "0482331379",
    ),
    BloodBank(
        longitude: 25.442925573317126,
        latitude: 30.54979670438836,
        name: "Regional Blood Transfusion Center, New Valley",
        nameAr: "المركز الإقليمي لنقل الدم, الوادي الجديد",
        number: "0927920777"
    ),
  ];

  void launchMapsUrl(double lat, double lon) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller(String phone) async {
    var url = "tel:$phone";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class BloodBank {
  String? name;
  String? nameAr;
  String? number;
  double? longitude;
  double? latitude;

  BloodBank(
      {required this.longitude,
      required this.name,
      required this.nameAr,
      required this.number,
      required this.latitude});
}
