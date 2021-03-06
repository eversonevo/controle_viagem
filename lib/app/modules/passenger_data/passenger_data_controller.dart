import 'package:controle_viagem/app/models/passenger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PassengerDataController extends GetxController {
  late Passenger passenger;
  RxBool alter = false.obs;
  List<TextEditingController> editingController = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

   var selectedDrowpdown = 'abc';

  RxList<String> listPayments = <String>[
    'Pagamento à vista',
    'Entrada + 2 Parcelas',
    'Entrada + 3 Parcelas',
    'Entrada + 4 Parcelas',
    'Entrada + 5 Parcelas'
    ].obs;

    RxList<String> listAdvidor = <String>[
      'Everson',
      'Claude',      
    ].obs;

    RxList<String> listTariff = <String>[
      'Normal',
      'Professor',
      'Idoso/Criança',      
    ].obs;

  @override
  void onInit() {
      // recebe por argumento ao clicar no passageiro (para alteração e exclusão de passageiro)
      if (Get.arguments != null) {
        passenger = Get.arguments;
        editingController[0].text = passenger.code.toString();
        editingController[1].text = passenger.name;
        editingController[2].text = passenger.sex;
        editingController[3].text = passenger.dt_birth;
        editingController[4].text = passenger.rg;
        editingController[5].text = passenger.cpf;
        editingController[6].text = passenger.phone1;
        editingController[7].text = passenger.phone2;
        editingController[8].text = passenger.email;
        editingController[9].text = passenger.tariff;
        editingController[10].text = passenger.form_payment;
        editingController[11].text = passenger.advisor;
        alter.value = true;
      }
  }

  String validatePayment(String form_payment){
    switch (form_payment) {
      case 'entrance_1': 
        return 'Pagamento à vista';
      case 'entrance_2': 
        return 'Entrada + 2 Parcelas';
      case 'entrance_3': 
        return 'Entrada + 3 Parcelas';
      case 'entrance_4': 
        return 'Entrada + 4 Parcelas';
      case 'entrance_5': 
        return 'Entrada + 5 Parcelas';
      default:
        return form_payment;
    }
  }

  // dropdown - payments

      String? selectedValuePayment;


   var language = <String>[
    'Pagamento à vista',
    'Entrada + 2 Parcelas',
    'Entrada + 3 Parcelas',
    'Entrada + 4 Parcelas',
    'Entrada + 5 Parcelas'
     ];

    void onSelectedPayment(String value) {
        selectedValuePayment = value;
        update();
        changePayment(selectedValuePayment);
  }

  changePayment(String? selectedPayment) {     
     switch (selectedPayment) {
     case 'Pagamento à vista':
       Get.updateLocale(const Locale('Pagamento à vista'));
       break;
     case 'Entrada + 2 Parcelas':
       Get.updateLocale(const Locale('Entrada + 2 Parcelas'));
       break;
       case 'Entrada + 3 Parcelas':
       Get.updateLocale(const Locale('Entrada + 3 Parcelas'));
       break;
       case 'Entrada + 4 Parcelas':
       Get.updateLocale(const Locale('Entrada + 4 Parcelas'));
       break;
       case 'Entrada + 5 Parcelas':
       Get.updateLocale(const Locale('Entrada + 5 Parcelas'));
       break;
     default:
       Get.updateLocale(const Locale('Pagamento à vista'));
       break;
     }
  }


  // dropdown - advisor

      String? selectedValueAdvisor;


   var advisor = <String>[
    'Claude',
    'Everson'
     ];

    void onSelectedAdvisor(String value) {
        selectedValueAdvisor = value;
        update();
        changePayment(selectedValueAdvisor);
  }

  changeAdvisor(String? selectedAdvisor) {     
     switch (selectedAdvisor) {
     case 'Claude':
       Get.updateLocale(const Locale('Claude'));
       break;
     case 'Everson':
       Get.updateLocale(const Locale('Everson'));
       break;       
     default:
       Get.updateLocale(const Locale('Claude'));
       break;
     }
  }

  // dropdown - tariff

      String? selectedValueTariff;


   var tariff= <String>[
    'Normal',
    'Idoso/Criança',
    'Professor'
     ];

    void onSelectedTariff(String value) {
        selectedValueTariff = value;
        update();
        changeTariff(selectedValueTariff);
  }

  changeTariff(String? selectedTariff) {     
     switch (selectedTariff) {
     case 'Idoso/Criança':
       Get.updateLocale(const Locale('Idoso/Criança'));
       break;
     case 'Professor':
       Get.updateLocale(const Locale('Professor'));
       break;       
     default:
       Get.updateLocale(const Locale('Normal'));
       break;
     }
  }


  
}

