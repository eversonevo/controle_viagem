import 'dart:convert';


class PaymentPassenger {
  int code;
  int code_payment;
  int cod_passenger;
  PaymentPassenger({
    required this.code,
    required this.code_payment,
    required this.cod_passenger,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'code_payment': code_payment,
      'cod_passenger': cod_passenger,
    };
  }

  factory PaymentPassenger.fromMap(Map<String, dynamic> map) {
    return PaymentPassenger(
      code: map['code']?.toInt() ?? 0,
      code_payment: map['code_payment']?.toInt() ?? 0,
      cod_passenger: map['cod_passenger']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentPassenger.fromJson(String source) => PaymentPassenger.fromMap(json.decode(source));
}
