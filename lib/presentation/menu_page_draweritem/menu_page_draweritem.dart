import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MenuPageDraweritem extends StatelessWidget {
  const MenuPageDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 282.h,
                margin: EdgeInsets.only(right: 78.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 38.h,
                  vertical: 64.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 41.v),
                    CustomImageView(
                      imagePath: ImageConstant.img4140039RemovebgPreview,
                      height: 61.adaptSize,
                      width: 61.adaptSize,
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      "Mr.Derek",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 15.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsNotification,
                          height: 30.v,
                          width: 29.h,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant
                              .imgIconsNotificationOnprimarycontainer,
                          height: 30.v,
                          width: 29.h,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant
                              .imgIconsNotificationOnprimarycontainer30x29,
                          height: 30.v,
                          width: 29.h,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsNotification30x29,
                          height: 30.v,
                          width: 29.h,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsInvitefriends,
                          height: 30.v,
                          width: 29.h,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsSettings,
                          height: 30.v,
                          width: 29.h,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsNotification1,
                          height: 30.v,
                          width: 29.h,
                        ),
                      ],
                    ),
                    Container(
                      width: 97.h,
                      margin: EdgeInsets.only(
                        left: 11.h,
                        top: 6.v,
                      ),
                      child: Text(
                        "Home\nMy Wallet\nHistory\nNotifications\nInvite Friends\nSettings\nLogout",
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.blueGray90001,
                          fontSize: 17.fSize,
                          fontFamily: 'Actor',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
            ],
          ),
        ),
      ),
    );
  }
}
