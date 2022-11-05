import '/core/app_export.dart';
import 'package:application1/presentation/slash_screen/models/slash_model.dart';

class SlashController extends GetxController {
  Rx<SlashModel> slashModelObj = SlashModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
