import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Container(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: controller.accessPassenger,
                    child: const Text('Passageiros')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: controller.accessPayments,
                    child: const Text('Pagamentos')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: controller.accessReports,
                    child: const Text('Relatórios')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: controller.accessUser,
                    child: const Text('Usuários')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
