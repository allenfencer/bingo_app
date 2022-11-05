import '/core/app_export.dart';
import 'package:application1/presentation/admin_pannel_screen/models/admin_pannel_model.dart';
import 'package:flutter/material.dart';

class AdminPannelController extends GetxController {
  TextEditingController groupEighteenController = TextEditingController();

  TextEditingController groupSeventeenController = TextEditingController();

  TextEditingController groupSixteenController = TextEditingController();

  Rx<AdminPannelModel> adminPannelModelObj = AdminPannelModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupEighteenController.dispose();
    groupSeventeenController.dispose();
    groupSixteenController.dispose();
  }
}
