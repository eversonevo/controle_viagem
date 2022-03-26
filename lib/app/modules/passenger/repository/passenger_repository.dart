import 'dart:convert';

import 'package:controle_viagem/app/models/passenger.dart';
import 'package:controle_viagem/app/repository/i_passenger_repository.dart';
import 'package:flutter/services.dart';

class PassengerRepository implements IPassengerRepository {
  @override
  Future<List<Passenger>> findAllPassenger() async {
    final response =
        await rootBundle.loadString('lib/assets/files/passenger.json');
    Map<String, dynamic> mapa = jsonDecode(response);
    List<dynamic> data = mapa['passenger'];
    return data.map<Passenger>((resp) => Passenger.fromMap(resp)).toList();
  }
}
