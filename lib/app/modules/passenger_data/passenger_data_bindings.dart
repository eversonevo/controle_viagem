import 'package:get/get.dart';
import './passenger_data_controller.dart';

class PassengerDataBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PassengerDataController());
    }
}