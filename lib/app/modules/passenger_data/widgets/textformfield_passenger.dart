import 'package:controle_viagem/app/modules/passenger_data/passenger_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class TextformfieldPassenger extends GetView<PassengerDataController> {

  TextformfieldPassenger({ required int index, Key? key }) : _index = index+1, super(key: key);

  int _index;

   @override
   Widget build(BuildContext context) {
       if (_index <= 11){
         return TextFormField(
         controller: controller.editingController[_index],
         decoration: InputDecoration(
                      hintText: controller.validatePayment(controller.editingController[_index].text),
          ),
       );
       }
       return Container();
       
  }
}