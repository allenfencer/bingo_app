import '/core/app_export.dart';
import 'package:application1/presentation/chech_in_five_screen/models/chech_in_five_model.dart';
import 'package:flutter/material.dart';

class ChechInFiveController extends GetxController {
  TextEditingController groupTwentySevenController = TextEditingController();

  Rx<ChechInFiveModel> chechInFiveModelObj = ChechInFiveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwentySevenController.dispose();
  }
}
