import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './user_controller.dart';

class UserPage extends GetView<UserController> {
    
    const UserPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('UserPage'),),
            body: Container(),
        );
    }
}