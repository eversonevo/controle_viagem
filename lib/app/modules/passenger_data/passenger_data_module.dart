import 'package:controle_viagem/app/UI/module.dart';

import 'package:controle_viagem/app/modules/passenger_data/passenger_data_bindings.dart';
import 'package:controle_viagem/app/modules/passenger_data/passenger_data_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class PassengerDataModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/passengerData',
      page: () => const PassengerDataPage(),
      binding: PassengerDataBindings(),
    )
  ];
}
