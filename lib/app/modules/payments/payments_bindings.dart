import 'package:get/get.dart';
import './payments_controller.dart';

class PaymentsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PaymentsController());
    }
}