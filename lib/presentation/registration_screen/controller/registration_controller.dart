import '/core/app_export.dart';
import 'package:application1/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController {
  TextEditingController groupThirtySixController = TextEditingController();

  TextEditingController groupThirtyFiveController = TextEditingController();

  TextEditingController groupThirtyFourController = TextEditingController();

  TextEditingController groupThirtyThreeController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirtySixController.dispose();
    groupThirtyFiveController.dispose();
    groupThirtyFourController.dispose();
    groupThirtyThreeController.dispose();
  }
}
