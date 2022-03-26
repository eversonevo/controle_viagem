import 'package:controle_viagem/app/modules/home/home_bindings.dart';
import 'package:controle_viagem/app/modules/home/home_module.dart';
import 'package:controle_viagem/app/modules/home/home_page.dart';
import 'package:controle_viagem/app/modules/passenger/passenger_module.dart';
import 'package:controle_viagem/app/modules/payments/payments_module.dart';
import 'package:controle_viagem/app/modules/reports/reports_module.dart';
import 'package:controle_viagem/app/modules/user/user_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      getPages: [
        ...HomeModule().routers,
        ...PassengerModule().routers,
        ...PaymentsModule().routers,
        ...ReportsModule().routers,
        ...UserModule().routers,
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
