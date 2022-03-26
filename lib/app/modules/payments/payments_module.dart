import 'package:controle_viagem/app/UI/module.dart';
import 'package:controle_viagem/app/modules/payments/payments_bindings.dart';
import 'package:controle_viagem/app/modules/payments/payments_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class PaymentsModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/payments',
      page: () => const PaymentsPage(),
      binding: PaymentsBindings(),
    )
  ];
}
