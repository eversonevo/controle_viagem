import 'package:controle_viagem/app/modules/passenger/repository/widgets/card_passenger.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './passenger_controller.dart';

class PassengerPage extends GetView<PassengerController> {
    
    const PassengerPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PassengerPage'),),
            body: Column(
              children: [
                Expanded(
                  child: Obx(() => ListView.builder(
                    itemCount: controller.listPassengers.length,
                    itemBuilder: (_,index){
                      return CardPassenger(index: index);
                    }),
                )),
                  FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: (){
                      print('Adicionar Usuário');
                    }),
              ],
            ),
        );
    }
}