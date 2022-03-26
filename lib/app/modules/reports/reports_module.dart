import 'package:controle_viagem/app/UI/module.dart';
import 'package:controle_viagem/app/modules/reports/reports_bindings.dart';
import 'package:controle_viagem/app/modules/reports/reports_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class ReportsModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/reports',
      page: () => const ReportsPage(),
      binding: ReportsBindings(),
    )
  ];
}
