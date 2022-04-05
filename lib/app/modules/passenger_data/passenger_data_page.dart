import 'package:controle_viagem/app/models/passenger.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './passenger_data_controller.dart';

class PassengerDataPage extends GetView<PassengerDataController> {
    
    const PassengerDataPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PassengerDataPage'),),
            body: Container(
              child: Column(
                children: [
                  Visibility(
                    visible: controller.alter.value,
                    child: Text('TRUE')),
                  Visibility(
                    visible: !controller.alter.value,
                    child: Text('FALSE')),
                  TextFormField(
                    controller: controller.editingController[0],
                    decoration: InputDecoration(
                      hintText: controller.editingController[0].text,
                    ),
                  ),
                ],
              ),
              
            ),
        );
    }
}