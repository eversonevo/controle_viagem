import 'package:get/get.dart';
import './user_controller.dart';

class UserBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(UserController());
    }
}