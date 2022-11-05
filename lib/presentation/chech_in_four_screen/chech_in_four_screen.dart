import 'controller/chech_in_four_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class ChechInFourScreen extends GetWidget<ChechInFourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(861.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: getPadding(right: 10, bottom: 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(right: 10),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgShapesGreen201,
                                                    height:
                                                        getVerticalSize(77.00),
                                                    width: getHorizontalSize(
                                                        184.00)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 56,
                                                    top: 192,
                                                    right: 56),
                                                child: Text(
                                                    "msg_your_referal_co".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold24))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 27,
                                                    top: 52,
                                                    right: 27),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  40.00),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        40.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            10),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.black900)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                11,
                                                                            right:
                                                                                11,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_7"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold24Black900)))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  40.00),
                                                          margin: getMargin(
                                                              left: 16, top: 1),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        40.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            10),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.black900)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                12,
                                                                            right:
                                                                                12,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_9"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold24Black900)))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  40.00),
                                                          margin: getMargin(
                                                              left: 24, top: 1),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        40.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            10),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.black900)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                9,
                                                                            right:
                                                                                10,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_0"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold24Black900)))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  40.00),
                                                          margin: getMargin(
                                                              left: 19, top: 1),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        40.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            10),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.black900)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14,
                                                                            right:
                                                                                16,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_1"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold24Black900)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            right:
                                                                                10),
                                                                        child: Text(
                                                                            "lbl_2"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold24Black900))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        40.00),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                1),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.black900))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(33.00),
                                                width:
                                                    getHorizontalSize(277.00),
                                                margin: getMargin(
                                                    left: 40,
                                                    top: 68,
                                                    right: 40),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .center,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      276.00),
                                                              margin: getMargin(
                                                                  left: 1),
                                                              child: Text(
                                                                  "msg_note_please_d"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold13))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  33.00),
                                                          margin: getMargin(
                                                              top: 10,
                                                              right: 10,
                                                              bottom: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .black900))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(60.00),
                                                width:
                                                    getHorizontalSize(364.00),
                                                margin: getMargin(
                                                    left: 10, top: 194),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: InkWell(
                                                              onTap: () {
                                                                onTapImgButton();
                                                              },
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgButton,
                                                                  height:
                                                                      getVerticalSize(
                                                                          60.00),
                                                                  width: getHorizontalSize(
                                                                      364.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 40,
                                                                      top: 21,
                                                                      right: 40,
                                                                      bottom:
                                                                          20),
                                                              child: Text(
                                                                  "lbl_find_new_vendor"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold18)))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgButton() {
    Get.toNamed(AppRoutes.dashboardOneScreen);
  }
}
