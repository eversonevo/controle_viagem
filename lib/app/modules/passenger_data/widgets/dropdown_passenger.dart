import 'package:controle_viagem/app/modules/passenger_data/passenger_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownPassenger extends GetView<PassengerDataController> {
   
   const DropdownPassenger({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return DropdownButton(
                  hint: Text(
                    'Book Type',
                  ),
                  onChanged: (newValue) {
                    controller.selectedDrowpdown = newValue.toString();
                    controller.update();
                    
                  },
                  value: controller.selectedDrowpdown,
                  items: [
                     for (var data in controller.listPayments)
                      DropdownMenuItem(
                        child: new Text(
                            data,
                        ),
                      value: data,
                    )
                    ],
                );
  }
}