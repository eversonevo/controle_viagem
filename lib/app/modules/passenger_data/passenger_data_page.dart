import 'package:controle_viagem/app/modules/passenger_data/widgets/dropdown_passenger.dart';
import 'package:controle_viagem/app/modules/passenger_data/widgets/textformfield_passenger.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './passenger_data_controller.dart';

class PassengerDataPage extends GetView<PassengerDataController> {
    
    const PassengerDataPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PassengerDataPage'),),
            body: ListView.builder(
                    itemCount: controller.editingController.length,
                    itemBuilder: (_,index){
                      print(index);
                      if ((index != 8)&(index != 9) & (index != 10)){
                          return TextformfieldPassenger(index: index);
                      }
                      
                      return DropdownPassenger(index: index);

                    }),                  
              
              
        );
    }
}