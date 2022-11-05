import 'controller/registration_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
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
                                          left: 26, top: 52, right: 26),
                                      child: Text("msg_welcome_to_wast".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsBold18))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(211.00),
                                      margin: getMargin(
                                          left: 26, top: 48, right: 26),
                                      child: Text("msg_how_you_manage".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtPoppinsRegular14Black900dd))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(50.00),
                                      width: getHorizontalSize(364.00),
                                      margin: getMargin(
                                          left: 26, top: 61, right: 21),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgInput,
                                                    height:
                                                        getVerticalSize(50.00),
                                                    width: getHorizontalSize(
                                                        364.00))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 21,
                                                        top: 16,
                                                        right: 21,
                                                        bottom: 16),
                                                    child: Text(
                                                        "msg_enter_your_full"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14Black9007a)))
                                          ]))),
                              CustomTextFormField(
                                  width: 364,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.groupThirtySixController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 26, top: 22, right: 21),
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
                                  controller:
                                      controller.groupThirtyFiveController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 26, top: 22, right: 21),
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
                                  controller:
                                      controller.groupThirtyFourController,
                                  hintText: "msg_confirm_passwor".tr,
                                  margin:
                                      getMargin(left: 26, top: 22, right: 20),
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
                                  controller:
                                      controller.groupThirtyThreeController,
                                  hintText: "lbl_your_location".tr,
                                  margin:
                                      getMargin(left: 26, top: 22, right: 24),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center),
                              CustomButton(
                                  width: 364,
                                  text: "lbl_register".tr,
                                  margin:
                                      getMargin(left: 26, top: 48, right: 24),
                                  onTap: onTapBtnRegister,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreaadyhavea();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 44,
                                              top: 26,
                                              right: 44,
                                              bottom: 5),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_alreaady_have_a2"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900Dd,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: " ",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .cyan700,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_sign_in".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .cyanA400,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ]),
                                              textAlign: TextAlign.left))))
                            ]))))));
  }

  onTapBtnRegister() {
    Get.toNamed(AppRoutes.loginOneScreen);
  }

  onTapTxtAlreaadyhavea() {
    Get.toNamed(AppRoutes.loginOneScreen);
  }
}
