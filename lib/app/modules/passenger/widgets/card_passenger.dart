import 'package:controle_viagem/app/modules/passenger/passenger_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CardPassenger extends GetView<PassengerController> {

  const CardPassenger({ required int index, Key? key }) : _index = index, super(key: key);

  final int _index;

   @override
   Widget build(BuildContext context) {
       return InkWell(
         onTap: (){
           Get.toNamed('/passengerData',arguments: controller.listPassengers[_index]);
         },
         child: Padding(
           padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
           child: Container(
             width: Get.width * 0.6,
             color: Colors.yellow,
             height: 80,
             child: Stack(
               children: [
                 Positioned(
                   top: 5,
                   left: 5,
                   child: Text(controller.listPassengers[_index].name, 
                   textAlign: TextAlign.left, 
                   style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Arial',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w800,
                      height: 1
                      ))),
                   Positioned(
                   top: 5,
                   right: 5,
                   child: Text(controller.listPassengers[_index].dt_birth)),
                   Positioned(
                   top: 20,
                   left: 5,
                   child: Text(controller.listPassengers[_index].phone1)),
                   Positioned(
                   top: 35,
                   left: 5,
                   child: Text(controller.listPassengers[_index].phone2)),
                   Positioned(
                   top: 55,
                   left: 5,
                   child: Text(controller.validatePayment(controller.listPassengers[_index].form_payment))),
                   Positioned(
                   top: 55,
                   right: 5,
                   child: Text(controller.listPassengers[_index].advisor)),
               ],
             ),
           ),
         ),
       );
  }
}

/*

Card(
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
*/


/*

Container(
      width: Get.width *0.95,
      height: 517,
      decoration: const BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 445,
      height: 517,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 445,
        height: 517,
        decoration: const BoxDecoration(
          color : Color.fromRGBO(255, 252, 252, 1),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 121,
        left: 34,
        child: Container(
        width: 380,
        height: 96,
        decoration: BoxDecoration(
          color : Color.fromRGBO(200, 200, 200, 1),
  )
      )
      ),Positioned(
        top: 132,
        left: 44,
        child: Text('EVERSON CESAR BARUMBY', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 191,
        left: 44,
        child: Text('Entrada + 5 Parcelas', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 151,
        left: 71,
        child: Text('(41) 99948-2740', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 169,
        left: 71,
        child: Text('(41) 00000-0000', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 126,
        left: 349,
        child: Text('15/10/1981', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(235, 4, 4, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 195,
        left: 349,
        child: Text('EVERSON', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(235, 4, 4, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    ),
    */