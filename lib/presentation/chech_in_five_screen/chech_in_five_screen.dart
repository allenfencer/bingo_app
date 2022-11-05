import 'controller/chech_in_five_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChechInFiveScreen extends GetWidget<ChechInFiveController> {
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
                              padding: getPadding(left: 25, top: 57, right: 25),
                              child: Text("msg_find_new_locati".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 42, top: 47, right: 42),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        variant: IconButtonVariant
                                            .OutlineBlack9003f_1,
                                        shape: IconButtonShape.CircleBorder25,
                                        padding: IconButtonPadding.PaddingAll9,
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgGroup28)),
                                    CustomTextFormField(
                                        width: 245,
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .groupTwentySevenController,
                                        hintText: "lbl_new_location".tr,
                                        margin: getMargin(
                                            left: 14, top: 5, bottom: 5),
                                        variant: TextFormFieldVariant
                                            .OutlineBlack9003f,
                                        shape:
                                            TextFormFieldShape.RoundedBorder18,
                                        padding:
                                            TextFormFieldPadding.PaddingAll12,
                                        textInputAction: TextInputAction.done)
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 25, top: 70, right: 25),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgUndrawlocation,
                                  height: getVerticalSize(246.00),
                                  width: getHorizontalSize(328.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(364.00),
                              margin: getMargin(
                                  left: 25, top: 107, right: 25, bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: InkWell(
                                            onTap: () {
                                              onTapImgButton();
                                            },
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgButton,
                                                height: getVerticalSize(60.00),
                                                width: getHorizontalSize(
                                                    364.00)))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 74,
                                                top: 17,
                                                right: 74,
                                                bottom: 17),
                                            child: Text(
                                                "msg_search_nearby_v".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold18)))
                                  ])))
                    ])))));
  }

  onTapImgButton() {
    Get.toNamed(AppRoutes.dashboardOneScreen);
  }
}
