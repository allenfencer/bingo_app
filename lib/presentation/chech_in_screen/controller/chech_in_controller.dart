import '/core/app_export.dart';
import 'package:application1/presentation/chech_in_screen/models/chech_in_model.dart';
import 'package:flutter/material.dart';

class ChechInController extends GetxController {
  TextEditingController groupThreeController = TextEditingController();

  Rx<ChechInModel> chechInModelObj = ChechInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThreeController.dispose();
  }
}
