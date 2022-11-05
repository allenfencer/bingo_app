import '/core/app_export.dart';
import 'package:application1/presentation/forget_password_one_screen/models/forget_password_one_model.dart';
import 'package:flutter/material.dart';

class ForgetPasswordOneController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController groupThirtyNineController = TextEditingController();

  TextEditingController groupThirtyEightController = TextEditingController();

  Rx<ForgetPasswordOneModel> forgetPasswordOneModelObj =
      ForgetPasswordOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    groupThirtyNineController.dispose();
    groupThirtyEightController.dispose();
  }
}
