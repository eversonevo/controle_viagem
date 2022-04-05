import 'package:controle_viagem/app/models/passenger.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PassengerDataController extends GetxController {
  late Passenger passenger;
  RxBool alter = false.obs;
  List<TextEditingController> editingController = [];

  @override
  void onInit() {
      // recebe por argumento ao clicar no passageiro (para alteração e exclusão de passageiro)
      if (Get.arguments != null) {
        passenger = Get.arguments;
        editingController[0].text = passenger.name;
        alter.value = true;
      }
  }
  
}