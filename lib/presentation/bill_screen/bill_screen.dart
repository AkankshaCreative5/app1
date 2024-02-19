import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:akanksha_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application1/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class BillScreen extends StatelessWidget {
  BillScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = ["lbl_halt_stadium", "lbl_d_r_street"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 669.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        _buildElevenStack(context),
                        _buildNineColumn(context),
                        CustomImageView(
                            imagePath: ImageConstant.imgIllustration0101494x360,
                            height: 494.v,
                            width: 360.h,
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                      height: 48.v,
                      width: 135.h,
                      text: "Save Ticket",
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20),
                  SizedBox(height: 60.v)
                ]))));
  }

  /// Section Widget
  Widget _buildElevenStack(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 326.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse1326x360,
                  height: 326.v,
                  width: 360.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 12.h, top: 27.v, right: 15.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomAppBar(
                                height: 30.v,
                                leadingWidth: 36.h,
                                leading: AppbarLeadingImage(
                                    imagePath:
                                        ImageConstant.imgArrowLeftWhiteA700,
                                    margin: EdgeInsets.only(
                                        left: 12.h, bottom: 6.v),
                                    onTap: () {
                                      onTapArrowLeft(context);
                                    }),
                                actions: [
                                  AppbarTitle(
                                      text: "Derek",
                                      margin: EdgeInsets.only(
                                          left: 15.h, top: 5.v, bottom: 5.v)),
                                  AppbarTrailingImage(
                                      imagePath: ImageConstant
                                          .img4140039RemovebgPreview,
                                      margin: EdgeInsets.only(
                                          left: 5.h, right: 15.h))
                                ]),
                            SizedBox(height: 28.v),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("Your ticket is ready..",
                                    style: TextStyle(
                                        color: appTheme.whiteA700,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600))),
                            SizedBox(height: 4.v),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text("Tickets for 2 person",
                                    style: TextStyle(
                                        color: appTheme.whiteA700,
                                        fontSize: 8.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600)))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildNineColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: AppDecoration.outlinePrimary2
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(left: 9.h, right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCarBlack90035x35,
                                      height: 48.v,
                                      width: 71.h),
                                  SizedBox(height: 15.v),
                                  Container(
                                      width: 64.h,
                                      margin: EdgeInsets.only(right: 5.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("OTP",
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            Text("7676",
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: 12.fSize,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ]))
                                ])),
                        SizedBox(
                            height: 90.v,
                            child: VerticalDivider(width: 1.h, thickness: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 14.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 34.v,
                                  width: 85.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 21.h),
                                                child: Text("Cab",
                                                    style: TextStyle(
                                                        color:
                                                            appTheme.black900,
                                                        fontSize: 18.fSize,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w700)))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("Honda City Sedan",
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: 10.fSize,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w400)))
                                      ])),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Driver",
                                            style: TextStyle(
                                                color: appTheme.blueGray500,
                                                fontSize: 11.fSize,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700))),
                                    Padding(
                                        padding: EdgeInsets.only(left: 11.h),
                                        child: Text("Mr.Andrew",
                                            style: TextStyle(
                                                color: appTheme.black900,
                                                fontSize: 11.fSize,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500)))
                                  ])),
                              SizedBox(
                                  width: 117.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Cab No.",
                                            style: TextStyle(
                                                color: appTheme.blueGray500,
                                                fontSize: 11.fSize,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700)),
                                        Text("UP 14 CW 4606",
                                            style: TextStyle(
                                                color: appTheme.black900,
                                                fontSize: 10.fSize,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w300))
                                      ]))
                            ]))
                      ])),
              SizedBox(height: 14.v),
              Divider(),
              SizedBox(height: 22.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 33.h, right: 49.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pickup",
                                style: TextStyle(
                                    color: appTheme.blueGray500,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700)),
                            Text("Drop",
                                style: TextStyle(
                                    color: appTheme.blueGray500,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700))
                          ]))),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, right: 17.h),
                  child: Row(children: [
                    CustomRadioButton(
                        text: "Halt stadium ",
                        value: radioList[0],
                        groupValue: radioGroup,
                        textStyle: TextStyle(
                            color: appTheme.black900,
                            fontSize: 12.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                        onChange: (value) {
                          radioGroup = value;
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 61.h),
                        child: CustomRadioButton(
                            text: "D.R Street ",
                            value: radioList[1],
                            groupValue: radioGroup,
                            textStyle: TextStyle(
                                color: appTheme.black900,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                            onChange: (value) {
                              radioGroup = value;
                            }))
                  ])),
              SizedBox(height: 29.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Passenger",
                      style: TextStyle(
                          color: appTheme.blueGray500,
                          fontSize: 11.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text("For 1",
                          style: TextStyle(
                              color: appTheme.black900,
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400)))
                ]),
                Spacer(flex: 54),
                Column(children: [
                  Text("Price",
                      style: TextStyle(
                          color: appTheme.blueGray500,
                          fontSize: 11.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 15.v),
                  Text("250 Rs",
                      style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400))
                ]),
                Spacer(flex: 45),
                Column(children: [
                  Text("Valid Till",
                      style: TextStyle(
                          color: appTheme.blueGray500,
                          fontSize: 11.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 15.v),
                  Text("20-10-2020",
                      style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400))
                ])
              ]),
              SizedBox(height: 46.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("Departure",
                                    style: TextStyle(
                                        color: appTheme.blueGray500,
                                        fontSize: 11.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700))),
                            Text("Arrived",
                                style: TextStyle(
                                    color: appTheme.blueGray500,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700))
                          ]))),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h, right: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 90.v),
                            child: Text("07:56 pm",
                                style: TextStyle(
                                    color: appTheme.black900,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400))),
                        Padding(
                            padding: EdgeInsets.only(left: 30.h, top: 4.v),
                            child: QrImageView(
                                data: 'https://www.google.com',
                                size: 100.adaptSize)),
                        Padding(
                            padding: EdgeInsets.only(left: 23.h, bottom: 90.v),
                            child: Text("08:56 pm",
                                style: TextStyle(
                                    color: appTheme.black900,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400)))
                      ])),
              SizedBox(height: 8.v)
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
