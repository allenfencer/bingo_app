import '../controller/chech_in_controller.dart';
import 'package:get/get.dart';

class ChechInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChechInController());
  }
}
