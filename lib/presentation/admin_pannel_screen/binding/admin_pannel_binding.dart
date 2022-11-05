import '../controller/admin_pannel_controller.dart';
import 'package:get/get.dart';

class AdminPannelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminPannelController());
  }
}
