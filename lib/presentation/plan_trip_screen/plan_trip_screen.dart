import '../plan_trip_screen/widgets/tourpackagelist_item_widget.dart';
import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:akanksha_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PlanTripScreen extends StatelessWidget {
  const PlanTripScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse11,
                            height: 363.v,
                            width: 360.h,
                            alignment: Alignment.topCenter,
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  right: 7.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "Trip to Himanchal Pradesh",
                                        style: TextStyle(
                                          color: appTheme.gray5001,
                                          fontSize: 18.fSize,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 37.v),
                                    _buildTourPackageList(context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildAppBar(context),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIllustration0101697x360,
                height: 697.v,
                width: 360.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTourPackageList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 12.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return TourpackagelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 20.v,
      leadingWidth: 359.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgChevron,
        margin: EdgeInsets.only(
          left: 23.h,
          right: 324.h,
        ),
      ),
    );
  }
}
