import 'controller/login_one_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends GetWidget<LoginOneController> {
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
                                          left: 26, top: 44, right: 26),
                                      child: Text("msg_welcome_to_wast2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsBold18))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 34, right: 26),
                                      child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgUndrawmobilea,
                                          height: getVerticalSize(265.00),
                                          width: getHorizontalSize(334.00)))),
                              CustomTextFormField(
                                  width: 364,
                                  focusNode: FocusNode(),
                                  controller: controller.groupElevenController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 26, top: 24, right: 21),
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
                                  controller: controller.groupTenController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 26, top: 28, right: 21),
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
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgetpassword();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 26, top: 32, right: 26),
                                          child: Text("lbl_forget_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14CyanA400)))),
                              CustomButton(
                                  width: 364,
                                  text: "lbl_login".tr,
                                  margin:
                                      getMargin(left: 26, top: 34, right: 24),
                                  onTap: onTapBtnLogin,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveana();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 55,
                                              top: 26,
                                              right: 55,
                                              bottom: 5),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_don_t_have_an_a2"
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
                                                    text: "lbl_sign_up".tr,
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

  onTapTxtForgetpassword() {
    Get.toNamed(AppRoutes.forgetPasswordOneScreen);
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.dashboardOneScreen);
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
