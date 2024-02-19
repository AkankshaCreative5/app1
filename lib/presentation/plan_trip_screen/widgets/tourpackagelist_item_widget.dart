import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TourpackagelistItemWidget extends StatelessWidget {
  const TourpackagelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 392.v,
      width: 339.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(right: 2.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 56.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 14.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Manali Kullu Special Weekend tour ",
                                style: TextStyle(
                                  color: appTheme.black900,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 9.v),
                              Text(
                                "5 Days/4 Night",
                                style: TextStyle(
                                  color: appTheme.black900,
                                  fontSize: 11.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "APR",
                                  style: TextStyle(
                                    color: appTheme.whiteA700,
                                    fontSize: 10.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "27",
                                  style: TextStyle(
                                    color: appTheme.whiteA700,
                                    fontSize: 18.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 123.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Best Priced Packages within your budget\nFriendly Customer Support\n100% Money Safe Guarantee\nSecure & Safe Online Transaction",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 6.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "Pickup Details",
                                  style: TextStyle(
                                    color: appTheme.blueGray500,
                                    fontSize: 7.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFiRrMarker,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "Dwarika Delhi",
                                      style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 6.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFiRrTimeOclock,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(left: 13.h),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "10:00pm-05:00am",
                                      style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 6.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          height: 30.v,
                          width: 90.h,
                          text: "Book Now",
                          buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7b1215x337,
            height: 215.v,
            width: 337.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
