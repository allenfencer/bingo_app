import '../controller/chech_in_one_controller.dart';
import 'package:get/get.dart';

class ChechInOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChechInOneController());
  }
}
