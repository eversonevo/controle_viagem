import 'package:controle_viagem/app/models/passenger.dart';

abstract class IPassengerRepository {
  Future<List<Passenger>> findAllPassenger();
}
