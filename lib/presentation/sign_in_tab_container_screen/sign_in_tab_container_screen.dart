import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/presentation/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignInTabContainerScreen extends StatefulWidget {
  const SignInTabContainerScreen({Key? key}) : super(key: key);

  @override
  SignInTabContainerScreenState createState() =>
      SignInTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SignInTabContainerScreenState extends State<SignInTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1413x360,
                      height: 413.v,
                      width: 360.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(top: 18.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup8),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 20.v,
                                    width: 12.h,
                                    margin: EdgeInsets.only(left: 20.h),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                SizedBox(height: 61.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Text("Log in ",
                                        style: TextStyle(
                                            color: appTheme.whiteA700,
                                            fontSize: 25.fSize,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600))),
                                Spacer(),
                                _buildSignUpTabView(context),
                                SizedBox(
                                    height: 496.v,
                                    child: TabBarView(
                                        controller: tabviewController,
                                        children: [SignInPage(), SignInPage()]))
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildSignUpTabView(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: SizedBox(
                height: 65.v,
                width: 329.h,
                child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.gray900,
                    labelStyle: TextStyle(
                        fontSize: 24.fSize,
                        fontFamily: 'Actor',
                        fontWeight: FontWeight.w400),
                    unselectedLabelColor: appTheme.gray400,
                    unselectedLabelStyle: TextStyle(
                        fontSize: 24.fSize,
                        fontFamily: 'Actor',
                        fontWeight: FontWeight.w400),
                    indicatorColor: theme.colorScheme.primary,
                    tabs: [
                      Tab(child: Text("Sign Up")),
                      Tab(child: Text("Sign In"))
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
