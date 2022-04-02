import 'package:controle_viagem/app/models/passenger.dart';
import 'package:controle_viagem/app/modules/passenger/widgets/insert_passanger.dart';
import 'package:controle_viagem/app/repository/i_passenger_repository.dart';
import 'package:get/get.dart';

class PassengerController extends GetxController {
  final IPassengerRepository _passengerRepository;

  PassengerController(this._passengerRepository);
  final RxList<Passenger> _listPassangers = <Passenger>[].obs;

  @override
  void onInit() async {
    super.onInit();
    _listPassangers.value = await _passengerRepository.findAllPassenger();
    print(_listPassangers[0].name);
    print(listPassengers[1].name);
  }

  RxList<Passenger> get listPassengers => _listPassangers;

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
        return 'Sem pagamento definido';
    }
  }

  void insertPassanger(){
    print('passou');
    const InsertPassanger();
  }
  
}
