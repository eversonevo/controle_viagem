import 'package:controle_viagem/app/modules/passenger_data/passenger_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownPassenger extends GetView<PassengerDataController> {
   
   DropdownPassenger({required int index, Key? key}) : _index = index+1, super(key: key);

   int _index;
   
   @override
   Widget build(BuildContext context) {
        bool teste1 = controller.listPayments.contains(controller.validatePayment(controller.editingController[_index].text));
        bool teste2 = controller.listAdvidor.contains(controller.validatePayment(controller.editingController[_index].text));
        bool teste3 = controller.listTariff.contains(controller.validatePayment(controller.editingController[_index].text));
        if (teste3){
          return DropdownButton<String>(
               hint: Text(controller.validatePayment(controller.editingController[_index].text)),
               value: controller.selectedValueTariff,
               onChanged: (newValue) {
               controller.onSelectedTariff(newValue!);
               },
               elevation: 10,
               items: [
                 DropdownMenuItem(
                  child: Text("Normal"),
                  value: 'Normal',
                 ),
                 DropdownMenuItem(
                   child: Text("Idoso/Criança"),
                   value: 'Idoso/Criança',
                 ),                 
                 DropdownMenuItem(
                   child: Text("Professor"),
                   value: 'Professor',
                 ),                 
              ]);
          
        }
        if (teste1){
          return DropdownButton<String>(
               hint: Text(controller.validatePayment(controller.editingController[_index].text)),
               value: controller.selectedValuePayment,
               onChanged: (newValue) {
               controller.onSelectedPayment(newValue!);
               },
               elevation: 10,
               items: [
                 DropdownMenuItem(
                  child: Text("Pagamento à vista"),
                  value: 'Pagamento à vista',
                 ),
                 DropdownMenuItem(
                   child: Text("Entrada + 2 Parcelas"),
                   value: 'Entrada + 2 Parcelas',
                 ),
                 DropdownMenuItem(
                   child: Text("Entrada + 3 Parcelas"),
                   value: 'Entrada + 3 Parcelas',
                 ),
                 DropdownMenuItem(
                   child: Text("Entrada + 4 Parcelas"),
                   value: 'Entrada + 4 Parcelas',
                 ),
                 DropdownMenuItem(
                   child: Text("Entrada + 5 Parcelas"),
                   value: 'Entrada + 5 Parcelas',
                 ),
              ]);
          print('payment');
        }
        if (teste2){
          return DropdownButton<String>(
               hint: Text(controller.validatePayment(controller.editingController[_index].text)),
               value: controller.selectedValueAdvisor,
               onChanged: (newValue) {
               controller.onSelectedAdvisor(newValue!);
               },
               elevation: 10,
               items: [
                 DropdownMenuItem(
                  child: Text("Claude"),
                  value: 'Claude',
                 ),
                 DropdownMenuItem(
                   child: Text("Everson"),
                   value: 'Everson',
                 ),                 
              ]);
          
        }
        return Container();
        }

        
}

 

/*
DropdownButton(
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
                );*/