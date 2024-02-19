import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application1/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  SignInPageState createState() => SignInPageState();
}

// ignore_for_file: must_be_immutable
class SignInPageState extends State<SignInPage>
    with AutomaticKeepAliveClientMixin<SignInPage> {
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('84');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

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
                        child: Container(
                            width: double.maxFinite,
                            decoration: AppDecoration.fillGray,
                            child: Column(children: [
                              SizedBox(height: 31.v),
                              _buildLoginSection(context)
                            ])))))));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 156.h,
                  child: Text("Login with your phone number",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appTheme.blueGray90001,
                          fontSize: 17.fSize,
                          fontFamily: 'Abhaya Libre',
                          fontWeight: FontWeight.w400)))),
          SizedBox(height: 13.v),
          CustomPhoneNumber(
              country: selectedCountry,
              controller: phoneNumberController,
              onTap: (Country value) {
                selectedCountry = value;
              }),
          SizedBox(height: 58.v),
          CustomElevatedButton(
              text: "Next",
              buttonStyle: CustomButtonStyles.fillPrimary,
              onPressed: () {
                onTapNext(context);
              }),
          SizedBox(height: 111.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgFacebookBlueA400,
                height: 34.adaptSize,
                width: 34.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgGoogleGLogo,
                height: 34.adaptSize,
                width: 34.adaptSize,
                margin: EdgeInsets.only(left: 27.h))
          ]),
          SizedBox(height: 15.v),
          Text("Sign in and continue",
              style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 17.fSize,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w600))
        ]));
  }

  /// Navigates to the phoneVerifyScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.phoneVerifyScreen);
  }
}
