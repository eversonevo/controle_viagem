import 'package:controle_viagem/app/UI/module.dart';
import 'package:controle_viagem/app/modules/user/user_bindings.dart';
import 'package:controle_viagem/app/modules/user/user_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class UserModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/user',
      page: () => const UserPage(),
      binding: UserBindings(),
    )
  ];
}
