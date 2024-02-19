import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class PhoneVerifyScreen extends StatelessWidget {
  const PhoneVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse1363x360,
                              height: 363.v,
                              width: 360.h,
                              alignment: Alignment.topCenter),
                          _buildPhoneVerifyStack(context),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 15.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.h, vertical: 158.v),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: 144.h,
                                                margin:
                                                    EdgeInsets.only(left: 39.h),
                                                child: Text(
                                                    "Enter your OTP code here",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: theme.colorScheme
                                                            .primary,
                                                        fontSize: 17.fSize,
                                                        fontFamily:
                                                            'Abhaya Libre',
                                                        fontWeight:
                                                            FontWeight.w400)))),
                                        SizedBox(height: 50.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 14.h, right: 20.h),
                                            child: CustomPinCodeTextField(
                                                context: context,
                                                onChanged: (value) {})),
                                        SizedBox(height: 80.v),
                                        CustomElevatedButton(
                                            height: 41.v,
                                            text: "Verify Now",
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL20,
                                            onPressed: () {
                                              onTapVerifyNow(context);
                                            }),
                                        SizedBox(height: 80.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildPhoneVerifyStack(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 309.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIllustration0101,
                  height: 309.v,
                  width: 360.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 31.h, top: 24.v),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 20.v,
                                width: 12.h,
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            SizedBox(height: 52.v),
                            Text("Phone Verification",
                                style: TextStyle(
                                    color: appTheme.whiteA700,
                                    fontSize: 27.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700))
                          ])))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapVerifyNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
