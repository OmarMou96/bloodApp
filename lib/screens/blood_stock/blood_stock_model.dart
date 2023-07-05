class BloodStockInfo {
  BloodStockInfo({
    required this.data,
    required this.success,
  });

  late final List<Stock> data;
  late final bool success;

  BloodStockInfo.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Stock.fromJson(e)).toList();
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['success'] = success;
    return _data;
  }
}

class Stock {
  Stock({
    required this.id,
    required this.bloodgroup,
    required this.unit,
  });

  late final int id;
  late final String bloodgroup;
  late final int unit;

  Stock.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bloodgroup = json['bloodgroup'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['bloodgroup'] = bloodgroup;
    _data['unit'] = unit;
    return _data;
  }
}
