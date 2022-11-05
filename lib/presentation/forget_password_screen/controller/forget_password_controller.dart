import '/core/app_export.dart';
import 'package:application1/presentation/forget_password_screen/models/forget_password_model.dart';
import 'package:flutter/material.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  Rx<ForgetPasswordModel> forgetPasswordModelObj = ForgetPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    groupSevenController.dispose();
    groupSixController.dispose();
  }
}
