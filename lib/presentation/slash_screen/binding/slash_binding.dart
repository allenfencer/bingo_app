import '../controller/slash_controller.dart';
import 'package:get/get.dart';

class SlashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SlashController());
  }
}
