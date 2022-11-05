import 'controller/forget_password_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(right: 10),
                                      child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgShapesGreen201,
                                          height: getVerticalSize(77.00),
                                          width: getHorizontalSize(184.00)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 68, right: 26),
                                      child: Text("msg_set_your_new_pa".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsSemiBold14))),
                              CustomTextFormField(
                                  width: 364,
                                  focusNode: FocusNode(),
                                  controller: controller.languageController,
                                  hintText: "lbl_email_address".tr,
                                  margin:
                                      getMargin(left: 26, top: 49, right: 24),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 364,
                                  focusNode: FocusNode(),
                                  controller: controller.groupSevenController,
                                  hintText: "lbl_new_password".tr,
                                  margin:
                                      getMargin(left: 26, top: 26, right: 24),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 364,
                                  focusNode: FocusNode(),
                                  controller: controller.groupSixController,
                                  hintText: "msg_confirm_new_pas".tr,
                                  margin:
                                      getMargin(left: 26, top: 26, right: 24),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 62, right: 26),
                                      child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgUndrawauthenti,
                                          height: getVerticalSize(172.00),
                                          width: getHorizontalSize(278.00)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(60.00),
                                      width: getHorizontalSize(364.00),
                                      margin: getMargin(
                                          left: 26,
                                          top: 25,
                                          right: 24,
                                          bottom: 5),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: InkWell(
                                                    onTap: () {
                                                      onTapImgButton();
                                                    },
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgButton,
                                                        height: getVerticalSize(
                                                            60.00),
                                                        width:
                                                            getHorizontalSize(
                                                                364.00)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 40,
                                                        top: 21,
                                                        right: 40,
                                                        bottom: 20),
                                                    child: Text("lbl_done".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold18)))
                                          ])))
                            ]))))));
  }

  onTapImgButton() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
