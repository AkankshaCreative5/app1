import '../home_page_screen/widgets/slidercomponent_item_widget.dart';
import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:akanksha_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application1/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTopUpSection(context),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 20.v),
                      child: Column(children: [
                        _buildRideSection(context),
                        SizedBox(height: 33.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("Plan a Trip",
                                    style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600)))),
                        SizedBox(height: 10.v),
                        _buildUserSection(context),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTopUpSection(BuildContext context) {
    return SizedBox(
        height: 313.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse1292x360,
              height: 292.v,
              width: 360.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 19.v, right: 16.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            leadingWidth: 59.h,
                            leading: AppbarLeadingIconbutton(
                                imagePath: ImageConstant.imgStroke2MenuHambuger,
                                margin: EdgeInsets.only(left: 17.h)),
                            actions: [
                              AppbarTitle(
                                  text: "Derek",
                                  margin: EdgeInsets.fromLTRB(
                                      15.h, 13.v, 4.h, 5.v)),
                              AppbarTrailingImage(
                                  imagePath:
                                      ImageConstant.img4140039RemovebgPreview,
                                  margin: EdgeInsets.only(
                                      left: 5.h, top: 8.v, right: 19.h))
                            ]),
                        SizedBox(height: 38.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Text("Hi Derek",
                                style: TextStyle(
                                    color: appTheme.gray5001,
                                    fontSize: 25.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700)))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 30.h, top: 163.v, right: 30.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 3.h, top: 11.v, bottom: 11.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 71.h,
                                          margin: EdgeInsets.only(right: 9.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgStroke2Wallet,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 5.v, bottom: 3.v),
                                                    child: Text("Wallet ",
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 12.fSize,
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))
                                              ]))),
                                  SizedBox(height: 12.v),
                                  Text("245 Rs",
                                      style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 15.v),
                                  CustomElevatedButton(
                                      height: 30.v,
                                      width: 70.h,
                                      text: "Top up",
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL15)
                                ])),
                        Spacer(),
                        SizedBox(
                            height: 129.v,
                            child: VerticalDivider(
                                width: 1.h, thickness: 1.v, indent: 42.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 21.h, top: 12.v, bottom: 21.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h,
                                                top: 5.v,
                                                bottom: 3.v),
                                            child: Text("Total Travelled",
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: 12.fSize,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.w400)))
                                      ]),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 16.h),
                                      child: Text("197 Km",
                                          style: TextStyle(
                                              color: appTheme.black900,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600))),
                                  SizedBox(height: 22.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 27.h),
                                      child: Text("See more",
                                          style: TextStyle(
                                              color: theme.colorScheme.primary,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500)))
                                ]))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgIllustration0101241x360,
              height: 241.v,
              width: 360.h,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildRideSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
              onTap: () {
                onTapNineteen(context);
              },
              child: Container(
                  margin: EdgeInsets.only(top: 1.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 9.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("  Ride",
                            style: TextStyle(
                                color: appTheme.whiteA700,
                                fontSize: 12.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 12.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgCar,
                            height: 15.v,
                            width: 32.h),
                        SizedBox(height: 4.v)
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: _buildLongRidesSection(context,
                  longRidesText: "Rental",
                  carImage: ImageConstant.imgCarGray80001)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: _buildLongRidesSection(context,
                  longRidesText: "Long Rides",
                  carImage: ImageConstant.imgCarGray8000114x41)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildLongRidesSection(context,
                  longRidesText: "Economic",
                  carImage: ImageConstant.imgCar14x41))
        ]));
  }

  /// Section Widget
  Widget _buildViewAllSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Text("View all",
                          style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 10.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500)))),
              SizedBox(height: 16.v),
              Column(children: [
                _buildEight(context,
                    image: ImageConstant.imgStroke2LocationPin,
                    text: "LKY-VSK",
                    cab: "Metro",
                    rs: "Rs",
                    oneHundredNinety: "45"),
                SizedBox(height: 10.v),
                _buildEight(context,
                    image: ImageConstant.imgStroke2LocationPinPrimary15x20,
                    text: "VCS-FDY",
                    cab: "Cab",
                    rs: "Rs",
                    oneHundredNinety: "190")
              ])
            ])));
  }

  /// Section Widget
  Widget _buildUserSection(BuildContext context) {
    return SizedBox(
        height: 291.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 10.v,
                  margin: EdgeInsets.only(bottom: 121.v),
                  child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 5,
                      effect: ScrollingDotsEffect(
                          spacing: 5,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10001,
                          dotHeight: 10.v,
                          dotWidth: 10.h)))),
          CarouselSlider.builder(
              options: CarouselOptions(
                  height: 196.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    sliderIndex = index;
                  }),
              itemCount: 1,
              itemBuilder: (context, index, realIndex) {
                return SlidercomponentItemWidget();
              }),
          _buildViewAllSection(context)
        ]));
  }

  /// Common widget
  Widget _buildLongRidesSection(
    BuildContext context, {
    required String longRidesText,
    required String carImage,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 11.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(longRidesText,
                  style: TextStyle(
                      color: appTheme.whiteA700,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 11.v),
              CustomImageView(imagePath: carImage, height: 14.v, width: 41.h),
              SizedBox(height: 2.v)
            ]));
  }

  /// Common widget
  Widget _buildEight(
    BuildContext context, {
    required String image,
    required String text,
    required String cab,
    required String rs,
    required String oneHundredNinety,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 5.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: image,
              height: 15.v,
              width: 20.h,
              margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 1.v),
              child: Text(text,
                  style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400))),
          CustomImageView(
              imagePath: ImageConstant.imgStroke2BikerCycle,
              height: 15.v,
              width: 20.h,
              margin: EdgeInsets.only(left: 15.h, top: 2.v, bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 5.v, bottom: 1.v),
              child: Text(cab,
                  style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400))),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: SizedBox(
                  height: 20.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 2.h,
                      endIndent: 3.h))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text(rs,
                  style: TextStyle(
                      color: theme.colorScheme.secondaryContainer,
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600))),
          Padding(
              padding: EdgeInsets.fromLTRB(12.h, 5.v, 35.h, 1.v),
              child: Text(oneHundredNinety,
                  style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600)))
        ]));
  }

  /// Navigates to the nvigationScreen when the action is triggered.
  onTapNineteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nvigationScreen);
  }
}
