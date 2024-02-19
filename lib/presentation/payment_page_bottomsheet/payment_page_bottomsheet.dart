import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class PaymentPageBottomsheet extends StatelessWidget {
  const PaymentPageBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 26.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder33),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCreditCardBitcoin,
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                margin: EdgeInsets.only(right: 7.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                margin: EdgeInsets.symmetric(horizontal: 7.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCloseBlueGray900,
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                margin: EdgeInsets.symmetric(horizontal: 7.h),
                                onTap: () {
                                  onTapImgClose(context);
                                })),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCreditCardAmazon,
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                margin: EdgeInsets.symmetric(horizontal: 7.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgAppPaypal,
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                margin: EdgeInsets.only(left: 7.h)))
                      ])),
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, right: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin: EdgeInsets.only(right: 18.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin:
                                    EdgeInsets.symmetric(horizontal: 18.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin:
                                    EdgeInsets.symmetric(horizontal: 18.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin:
                                    EdgeInsets.symmetric(horizontal: 18.h))),
                        Expanded(
                            child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin: EdgeInsets.only(left: 18.h)))
                      ]))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
