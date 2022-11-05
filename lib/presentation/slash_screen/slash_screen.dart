import 'controller/slash_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SlashScreen extends GetWidget<SlashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgShapesGreen201,
                                  height: getVerticalSize(121.00),
                                  width: getHorizontalSize(181.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 132, top: 38, right: 132),
                              child: Text("lbl_wasty".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold36))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 26, top: 45, right: 26),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUndrawmobiler,
                                  height: getVerticalSize(205.00),
                                  width: getHorizontalSize(248.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 26, top: 45, right: 26),
                              child: Text("msg_manage_your_was".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(210.00),
                              margin: getMargin(left: 26, top: 39, right: 26),
                              child: Text("msg_wasty_is_all_ab".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.txtPoppinsRegular14Black900dd))),
                      CustomButton(
                          width: 364,
                          text: "lbl_get_started".tr,
                          margin: getMargin(
                              left: 26, top: 81, right: 24, bottom: 5),
                          padding: ButtonPadding.PaddingAll19,
                          onTap: onTapBtnGetstarted,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapBtnGetstarted() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
