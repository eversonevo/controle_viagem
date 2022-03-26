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
          child: Expanded(
            child: Row(
              children: [
                TextButton(
                    onPressed: controller.accessPassenger,
                    child: const Text('Passageiros')),
                TextButton(
                    onPressed: controller.accessPayments,
                    child: const Text('Pagamentos')),
                TextButton(
                    onPressed: controller.accessReports,
                    child: const Text('Relatórios')),
                TextButton(
                    onPressed: controller.accessUser,
                    child: const Text('Usuários')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
