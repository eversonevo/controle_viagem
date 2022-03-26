import 'package:controle_viagem/app/UI/module.dart';
import 'package:controle_viagem/app/modules/passenger/passenger_bindings.dart';
import 'package:controle_viagem/app/modules/passenger/passenger_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class PassengerModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/passenger',
      page: () => const PassengerPage(),
      binding: PassengerBindings(),
    )
  ];
}
