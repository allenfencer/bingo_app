import '../controller/chech_in_five_controller.dart';
import 'package:get/get.dart';

class ChechInFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChechInFiveController());
  }
}
