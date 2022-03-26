import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './passenger_controller.dart';

class PassengerPage extends GetView<PassengerController> {
    
    const PassengerPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PassengerPage'),),
            body: Container(),
        );
    }
}