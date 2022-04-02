import 'dart:convert';


class Payment {
  int code;
  int code_passenger;
  bool entrance;
  bool portion1;
  bool portion2;
  bool portion3;
  bool pontion4;
  bool portion5;
  Payment({
    required this.code,
    required this.code_passenger,
    required this.entrance,
    required this.portion1,
    required this.portion2,
    required this.portion3,
    required this.pontion4,
    required this.portion5,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'code_passenger' : code_passenger,
      'entrance': entrance,
      'portion1': portion1,
      'portion2': portion2,
      'portion3': portion3,
      'pontion4': pontion4,
      'portion5': portion5,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      code: map['code']?.toInt() ?? 0,
      code_passenger: map['code_passenger']?.toInt() ?? 0,
      entrance: map['entrance'] ?? false,
      portion1: map['portion1'] ?? false,
      portion2: map['portion2'] ?? false,
      portion3: map['portion3'] ?? false,
      pontion4: map['pontion4'] ?? false,
      portion5: map['portion5'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Payment.fromJson(String source) => Payment.fromMap(json.decode(source));
}
