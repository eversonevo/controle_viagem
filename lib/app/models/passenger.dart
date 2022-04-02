import 'dart:convert';

class Passenger {
  int code;
  String name;
  String sex;
  String dt_birth;
  String rg;
  String cpf;
  String phone1;
  String phone2;
  String email;
  String tariff;
  String form_payment;
  String advisor;
  Passenger({
    required this.code,
    required this.name,
    required this.sex,
    required this.dt_birth,
    required this.rg,
    required this.cpf,
    required this.phone1,
    required this.phone2,
    required this.email,
    required this.tariff,
    required this.form_payment,
    required this.advisor
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
      'sex': sex,
      'dt_birth': dt_birth,
      'rg': rg,
      'cpf': cpf,
      'phone1': phone1,
      'phone2': phone2,
      'email': email,
      'tariff': tariff,
      'form_payment': form_payment,
      'advisor' : advisor,
    };
  }

  factory Passenger.fromMap(Map<String, dynamic> map) {
    return Passenger(
      code: map['code']?.toInt() ?? 99,
      name: map['name'] ?? '',
      sex: map['sex'] ?? '',
      dt_birth: map['dt_birth'] ?? '',
      rg: map['rg'] ?? '',
      cpf: map['cpf'] ?? '',
      phone1: map['phone1'] ?? '',
      phone2: map['phone2'] ?? '',
      email: map['email'] ?? '',
      tariff: map['tariff'] ?? '',
      form_payment: map['form_payment'] ?? '',
      advisor: map['advisor'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Passenger.fromJson(String source) =>
      Passenger.fromMap(json.decode(source));
}
