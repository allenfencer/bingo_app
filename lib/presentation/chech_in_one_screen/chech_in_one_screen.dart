import 'controller/chech_in_one_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ChechInOneScreen extends GetWidget<ChechInOneController> {
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
                                  height: getVerticalSize(77.00),
                                  width: getHorizontalSize(184.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 25, top: 91, right: 25),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgUndrawcelebrat,
                                  height: getVerticalSize(245.00),
                                  width: getHorizontalSize(337.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 25, top: 85, right: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                        height: 38,
                                        width: 38,
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgCheckmark)),
                                    Container(
                                        margin: getMargin(
                                            left: 5, top: 4, bottom: 4),
                                        padding: getPadding(
                                            left: 3,
                                            top: 5,
                                            right: 3,
                                            bottom: 5),
                                        decoration: AppDecoration
                                            .txtOutlineBlack9003f
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder15),
                                        child: Text("msg_your_messaged_h".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold13))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(364.00),
                              margin: getMargin(
                                  left: 25, top: 136, right: 25, bottom: 5),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: InkWell(
                                        onTap: () {
                                          onTapImgButton();
                                        },
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgButton,
                                            height: getVerticalSize(60.00),
                                            width: getHorizontalSize(364.00)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 40,
                                            top: 21,
                                            right: 40,
                                            bottom: 20),
                                        child: Text("msg_get_referal_cod".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold18)))
                              ])))
                    ])))));
  }

  onTapImgButton() {
    Get.toNamed(AppRoutes.chechInTwoScreen);
  }
}
