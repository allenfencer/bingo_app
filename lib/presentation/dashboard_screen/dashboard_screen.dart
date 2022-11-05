import 'controller/dashboard_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends GetWidget<DashboardController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillGreenA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(162.00),
                                            width: getHorizontalSize(261.00),
                                            margin: getMargin(right: 10),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 10,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgShapes,
                                                              height:
                                                                  getVerticalSize(
                                                                      77.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      184.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 10),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          50.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse3,
                                                                  height: getSize(
                                                                      100.00),
                                                                  width: getSize(
                                                                      100.00),
                                                                  fit: BoxFit
                                                                      .cover))))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 119,
                                            top: 56,
                                            right: 103,
                                            bottom: 24),
                                        child: Text("msg_meet_your_vendo".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold14))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 58, top: 47, right: 58),
                              child: Text("msg_select_the_type".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Black900c4))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 22, top: 18, right: 22),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 66, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              height: getSize(16.00),
                                              width: getSize(16.00),
                                              margin: getMargin(bottom: 1),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.green200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8.00)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 15, top: 3),
                                              child: Text("lbl_e_waste".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 12, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              height: getSize(16.00),
                                              width: getSize(16.00),
                                              margin: getMargin(bottom: 3),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.green200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8.00)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 15, top: 2),
                                              child: Text("lbl_paper_waste".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 12, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              height: getSize(16.00),
                                              width: getSize(16.00),
                                              margin: getMargin(bottom: 1),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.green200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8.00)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 15, top: 3),
                                              child: Text("lbl_metal_waste".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 17,
                                        top: 19,
                                        right: 17,
                                        bottom: 56),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              height: getSize(16.00),
                                              width: getSize(16.00),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8.00)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, top: 1, bottom: 1),
                                              child: Text(
                                                  "lbl_plastic_waste".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(364.00),
                          margin: getMargin(left: 22, top: 94, right: 22),
                          child: Stack(alignment: Alignment.center, children: [
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
                                    child: Text("lbl_contact_vendor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold18)))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtWanttochange();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 41, top: 30, right: 41, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_want_to_change2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900Dd,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_click_here".tr,
                                            style: TextStyle(
                                                color: ColorConstant.cyanA400,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left))))
                    ])))));
  }

  onTapImgButton() {
    Get.toNamed(AppRoutes.chechInOneScreen);
  }

  onTapTxtWanttochange() {
    Get.toNamed(AppRoutes.chechInScreen);
  }
}
