import '../controller/chech_in_three_controller.dart';
import 'package:get/get.dart';

class ChechInThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChechInThreeController());
  }
}
