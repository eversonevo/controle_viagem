import 'package:controle_viagem/app/modules/passenger/repository/passenger_repository.dart';
import 'package:controle_viagem/app/repository/i_passenger_repository.dart';
import 'package:get/get.dart';
import './passenger_controller.dart';

class PassengerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IPassengerRepository>(PassengerRepository());
    Get.put(PassengerController(Get.find()));
  }
}
