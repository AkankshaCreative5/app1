import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildLineSection(context),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup3,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 39.h,
                      vertical: 348.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup427318166,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 103.v,
                            width: 242.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                29.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLetSGoLogo01,
                          height: 103.v,
                          width: 260.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 330.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 57.h,
              child: Divider(
                color: appTheme.blueGray100,
              ),
            ),
            SizedBox(
              width: 77.h,
              child: Divider(
                color: appTheme.blueGray100,
                indent: 20.h,
              ),
            ),
            SizedBox(
              width: 77.h,
              child: Divider(
                color: appTheme.blueGray100,
                indent: 20.h,
              ),
            ),
            SizedBox(
              width: 77.h,
              child: Divider(
                color: appTheme.blueGray100,
                indent: 20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
