import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './payments_controller.dart';

class PaymentsPage extends GetView<PaymentsController> {
    
    const PaymentsPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PaymentsPage'),),
            body: Container(),
        );
    }
}