import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './reports_controller.dart';

class ReportsPage extends GetView<ReportsController> {
    
    const ReportsPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ReportsPage'),),
            body: Container(),
        );
    }
}