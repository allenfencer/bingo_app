import '../controller/chech_in_four_controller.dart';
import 'package:get/get.dart';

class ChechInFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChechInFourController());
  }
}
