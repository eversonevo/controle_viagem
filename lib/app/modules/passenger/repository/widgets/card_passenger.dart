import 'package:controle_viagem/app/modules/passenger/passenger_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CardPassenger extends GetView<PassengerController> {

  const CardPassenger({ required int index, Key? key }) : _index = index, super(key: key);

  final int _index;

   @override
   Widget build(BuildContext context) {
       return InkWell(
         onTap: (){
           print('Clicou usuário');
         },
         child: Center(
           child: Card(
             child: Column(
               children: [
                 Text(controller.listPassengers[_index].name),
                 Text(controller.listPassengers[_index].dt_birth),
                 Text(controller.listPassengers[_index].phone1),
                 Text(controller.listPassengers[_index].phone2),
                 Text(controller.validatePayment(controller.listPassengers[_index].form_payment)),

               ],
             ),
           ),
         ),
       );
  }
}
