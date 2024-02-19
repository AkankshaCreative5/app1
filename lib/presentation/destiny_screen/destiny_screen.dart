import '../destiny_screen/widgets/railways_item_widget.dart';
import 'dart:async';
import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DestinyScreen extends StatelessWidget {
  DestinyScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.h,
                        vertical: 91.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildCarColumn(context),
                          SizedBox(height: 23.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 11.v,
                            width: 21.h,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 10.v),
                        ],
                      ),
                    ),
                  ),
                  _buildMap(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 36.v,
                  width: 35.h,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCarBlack900,
                  ),
                ),
                SizedBox(height: 8.v),
                CustomIconButton(
                  height: 36.v,
                  width: 35.h,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCarBlack90036x35,
                  ),
                ),
                SizedBox(height: 9.v),
                CustomIconButton(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCarBlack90035x35,
                  ),
                ),
                SizedBox(height: 9.v),
                CustomIconButton(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  padding: EdgeInsets.all(3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                  ),
                ),
                SizedBox(height: 9.v),
                CustomIconButton(
                  height: 36.v,
                  width: 35.h,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAirplane,
                  ),
                ),
                SizedBox(height: 8.v),
                CustomIconButton(
                  height: 36.v,
                  width: 35.h,
                  padding: EdgeInsets.all(3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup19,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Wrap(
              runSpacing: 17.v,
              spacing: 17.h,
              children:
                  List<Widget>.generate(12, (index) => RailwaysItemWidget()),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 751.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
