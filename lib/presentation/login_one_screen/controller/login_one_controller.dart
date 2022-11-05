import '/core/app_export.dart';
import 'package:application1/presentation/login_one_screen/models/login_one_model.dart';
import 'package:flutter/material.dart';

class LoginOneController extends GetxController {
  TextEditingController groupElevenController = TextEditingController();

  TextEditingController groupTenController = TextEditingController();

  Rx<LoginOneModel> loginOneModelObj = LoginOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupElevenController.dispose();
    groupTenController.dispose();
  }
}
