import 'package:get/get.dart';

class HomeController extends GetxController {
  void accessPassenger() {
    Get.toNamed('/passenger');
  }

  void accessPayments() {
    Get.toNamed('/payments');
  }

  void accessReports() {
    Get.toNamed('/reports');
  }

  void accessUser() {
    Get.toNamed('/user');
  }
}
