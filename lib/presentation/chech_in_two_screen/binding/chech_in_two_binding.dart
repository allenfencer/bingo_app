import '../controller/chech_in_two_controller.dart';
import 'package:get/get.dart';

class ChechInTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChechInTwoController());
  }
}
