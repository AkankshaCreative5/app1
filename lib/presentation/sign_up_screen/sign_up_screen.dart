import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse1,
                                      height: 396.v,
                                      width: 360.h,
                                      alignment: Alignment.topCenter),
                                  _buildSixColumn(context),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 19.v),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant.imgGroup10),
                                                  fit: BoxFit.cover)),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 75.v),
                                                SizedBox(
                                                    height: 103.v,
                                                    width: 260.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                  height: 103.v,
                                                                  width: 242.h,
                                                                  decoration: BoxDecoration(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              29.h)))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgLetSGoLogo01,
                                                              height: 103.v,
                                                              width: 260.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])),
                                                Spacer(),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 71.h),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrowDownB,
                                                              height: 5.v,
                                                              width: 9.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 19.v,
                                                                      bottom: 18
                                                                          .v)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          11.h),
                                                              child: SizedBox(
                                                                  height: 44.v,
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          1.h,
                                                                      thickness:
                                                                          1.v,
                                                                      color: appTheme
                                                                          .blueGray50))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          10.h,
                                                                      top: 15.v,
                                                                      bottom:
                                                                          7.v),
                                                              child: Text("+84",
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .blueGray90001,
                                                                      fontSize: 17
                                                                          .fSize,
                                                                      fontFamily:
                                                                          'Actor',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))
                                                        ]))),
                                                SizedBox(height: 38.v),
                                                CustomElevatedButton(
                                                    text: "Sign Up",
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 21.h),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillPrimary,
                                                    onPressed: () {
                                                      onTapSignUp(context);
                                                    }),
                                                SizedBox(height: 65.v),
                                                CustomElevatedButton(
                                                    text:
                                                        "Connect with Facebook",
                                                    leftIcon: Container(
                                                        margin: EdgeInsets.only(
                                                            right: 17.h),
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgFacebook,
                                                            height: 23.v,
                                                            width: 11.h)),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillBlue),
                                                SizedBox(height: 23.v),
                                                Container(
                                                    width: 234.h,
                                                    margin: EdgeInsets.only(
                                                        left: 48.h,
                                                        right: 47.h),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "By clicking start, you agree to our ",
                                                              style: CustomTextStyles
                                                                  .bodyMediumAbhayaLibre_1),
                                                          TextSpan(
                                                              text:
                                                                  "Terms and Conditions ",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center))
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildSixColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 158.v),
            padding: EdgeInsets.symmetric(vertical: 32.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 36.h, right: 53.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sign Up",
                                style: TextStyle(
                                    color: appTheme.gray900,
                                    fontSize: 24.fSize,
                                    fontFamily: 'Actor',
                                    fontWeight: FontWeight.w400)),
                            Text("Sign In",
                                style: TextStyle(
                                    color: appTheme.gray400,
                                    fontSize: 24.fSize,
                                    fontFamily: 'Actor',
                                    fontWeight: FontWeight.w400))
                          ])),
                  SizedBox(height: 6.v),
                  Container(
                      height: 4.v,
                      width: 35.h,
                      margin: EdgeInsets.only(left: 59.h),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(2.h))),
                  SizedBox(height: 19.v),
                  Divider(color: appTheme.blueGray50),
                  SizedBox(height: 40.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomTextFormField(
                          controller: emailController,
                          hintText: "name@example.com",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          alignment: Alignment.center)),
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 54.v,
                          width: 288.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 44.v,
                                        width: 288.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.h),
                                            border: Border.all(
                                                color: appTheme.blueGray50,
                                                width: 1.h)))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        width: 58.h,
                                        margin: EdgeInsets.only(right: 104.h),
                                        child: Text("Mobile Number",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: appTheme.gray400,
                                                fontSize: 17.fSize,
                                                fontFamily: 'Actor',
                                                fontWeight: FontWeight.w400))))
                              ]))),
                  SizedBox(height: 67.v)
                ])));
  }

  /// Navigates to the signInTabContainerScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInTabContainerScreen);
  }
}
