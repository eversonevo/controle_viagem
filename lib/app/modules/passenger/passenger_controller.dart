import 'package:controle_viagem/app/models/passenger.dart';
import 'package:controle_viagem/app/repository/i_passenger_repository.dart';
import 'package:get/get.dart';

class PassengerController extends GetxController {
  final IPassengerRepository _passengerRepository;

  PassengerController(this._passengerRepository);

  @override
  void onInit() async {
    super.onInit();
    List<Passenger> response = await _passengerRepository.findAllPassenger();
    print(response[0].name);
  }
}
